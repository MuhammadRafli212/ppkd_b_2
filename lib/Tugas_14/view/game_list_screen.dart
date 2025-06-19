import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_14/api/get_game.dart';
import 'package:ppkd_b_2/Tugas_14/model/model_game.dart';
import 'package:ppkd_b_2/Tugas_14/view/profil.dart';

class GameListScreen extends StatefulWidget {
  const GameListScreen({super.key});

  @override
  State<GameListScreen> createState() => _GameListScreenState();
}

class _GameListScreenState extends State<GameListScreen> {
  List<Game> _allGames = [];
  List<Game> _filteredGames = [];
  final TextEditingController _searchController = TextEditingController();
  String? _selectedFamily;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadGames();
    _searchController.addListener(_filterGames);
  }

  Future<void> _loadGames() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final games = await game();
      setState(() {
        _allGames = games ?? [];
        _filteredGames = _allGames;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  void _filterGames() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredGames =
          _allGames.where((g) {
            final combinedText =
                '${g.firstName} ${g.lastName} ${g.fullName} ${g.title} ${g.family}'
                    .toLowerCase();
            final matchesQuery = combinedText.contains(query);
            final matchesFamily =
                _selectedFamily == null || g.family == _selectedFamily;
            return matchesQuery && matchesFamily;
          }).toList();
    });
  }

  void _selectFamily(String? family) {
    setState(() {
      _selectedFamily = family;
      _filterGames();
    });
  }

  List<String> _getUniqueFamilies() {
    final families =
        _allGames
            .map((e) => e.family)
            .where((f) => f.isNotEmpty)
            .toSet()
            .toList();
    families.sort();
    return families;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Widget _horizontalImage(String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(url, height: 150),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header image
          SizedBox(
            height: 175,
            width: double.infinity,
            child: Image.network(
              'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/03/Game-of-Thrones-Season-8.jpg',
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 5),

          // Horizontal image scroll
          SizedBox(
            height: 125,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _horizontalImage(
                    'https://assets-prd.ignimgs.com/2022/01/14/gameofthrones-allseasons-sq-1642120207458.jpg',
                  ),
                  _horizontalImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmFw6WpKnZsYgBO89eWr4Rj6v9eOBRhi6i9VH14NXxeqpTpVEizxreySBWweAxxn3TY-E&usqp=CAU',
                  ),
                  _horizontalImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTtyAD9UUOmK4dNjK7XkVw8kGVRH6OCRFnbvQZj8cturu5WC5sPVRv4Sc8dHxRM7UaYrQ&usqp=CAU',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          // Family filter
          if (_allGames.isNotEmpty)
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  IconButton(
                    icon: const Icon(Icons.clear),
                    tooltip: 'Reset Filter',
                    onPressed: () => _selectFamily(null),
                  ),
                  ..._getUniqueFamilies().map(
                    (family) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ElevatedButton(
                        onPressed: () => _selectFamily(family),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _selectedFamily == family
                                  ? Colors.white70
                                  : Colors.transparent,
                        ),
                        child: Text(family),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // Search bar + refresh button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Cari karakter...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.refresh, color: Color(0xff255F38)),
                  tooltip: 'Refresh',
                  onPressed: _loadGames,
                ),
              ],
            ),
          ),

          // Character list
          Expanded(
            child:
                _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _error != null
                    ? Center(child: Text('Error: $_error'))
                    : _filteredGames.isEmpty
                    ? const Center(child: Text("Karakter tidak ditemukan"))
                    : ListView.builder(
                      itemCount: _filteredGames.length,
                      itemBuilder: (context, index) {
                        final game = _filteredGames[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(game.imageUrl),
                            ),
                            title: Text('${game.firstName} ${game.lastName}'),
                            subtitle: Text('${game.title} • ${game.family}'),
                            trailing: IconButton(
                              icon: const Icon(Icons.person),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ProfileScreen(game: game),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
          ),
        ],
      ),
    );
  }
}
