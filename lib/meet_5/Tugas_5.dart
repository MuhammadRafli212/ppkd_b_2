import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  String _nama = '';
  bool _isFavorite = false;
  bool _showDescription = false;
  int _counter = 0;
  bool _showInkWellText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Tugas 5',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.camera_alt, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.send, color: Colors.black),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Tampilkan Nama
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _nama = "Nama saya: Muhammad Rafli";
                });
              },
              child: const Text("Tampilkan Nama"),
            ),
            if (_nama.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(_nama, style: const TextStyle(fontSize: 16)),
              ),

            const SizedBox(height: 10),

            // 2. Like (IconButton)
            Row(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxZYa5ywKmJNVvl5OdFwmG5NzkzOcG0H4J0g&s',
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: _isFavorite ? Colors.red : Colors.grey[400],
                    size: 30,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                ),
                if (_isFavorite)
                  const Text(
                    "Like",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
              ],
            ),

            const SizedBox(height: 20),

            // 3. TextButton - Lihat Selengkapnya
            TextButton(
              onPressed: () {
                setState(() {
                  _showDescription = !_showDescription;
                });
              },
              child: const Text(
                "Lihat Selengkapnya",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            if (_showDescription)
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Para Hokage Sedang Makan Ramen Ichiraku.",
                  style: TextStyle(fontSize: 14),
                ),
              ),

            const SizedBox(height: 20),

            // 5. InkWell - Container seperti card
            InkWell(
              onTap: () {
                print("Kotak disentuh");
                setState(() {
                  _showInkWellText = !_showInkWellText;
                });
              },
              child: Container(
                width: double.infinity,
                height: 160,
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Kotak",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (_showInkWellText)
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Teks dari InkWell",
                  style: TextStyle(fontSize: 16),
                ),
              ),

            const SizedBox(height: 20),

            // 6. GestureDetector - Teks interaktif
            GestureDetector(
              onTap: () => print("Ditekan sekali"),
              onDoubleTap: () => print("Ditekan dua kali"),
              onLongPress: () => print("Tahan lama"),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: const Text(
                  "Tekan Aku",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Counter
            Text(
              "Counter: $_counter",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),

      // 4. FAB untuk counter
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
