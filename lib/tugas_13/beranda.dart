import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_14/view/game_list_screen.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _beranda();
}

class _beranda extends State<Beranda> {
  int _selectedIndex = 0;
  List<Widget> listScreen = [
    // TambahLatihan(),
    // TimePickerPage(),
    // PilihLatihan(),
    // DatePickerPage(),
    GameListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Games', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff697565),
      ),
      body: listScreen[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff697565)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/yeja.jpg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Yeza Ayap',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Gamers Ganteng Idaman', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            // ListTile(
            //   leading: Icon(Icons.add),
            //   title: Text(
            //     'Tambah latihan Pribadi',
            //     style: TextStyle(fontSize: 14),
            //   ),
            //   onTap: () {
            //     setState(() {
            //       _selectedIndex = 0;
            //     });
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.date_range_rounded),
            //   title: Text('Alarm', style: TextStyle(fontSize: 14)),
            //   onTap: () {
            //     setState(() {
            //       _selectedIndex = 1;
            //     });
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.sports_gymnastics_sharp),
            //   title: Text(
            //     'Pilih Kategori Latihan',
            //     style: TextStyle(fontSize: 14),
            //   ),
            //   onTap: () {
            //     setState(() {
            //       _selectedIndex = 2;
            //     });
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.date_range_outlined),
            //   title: Text(
            //     'Pilih Tanggal Latihan',
            //     style: TextStyle(fontSize: 14),
            //   ),
            //   onTap: () {
            //     setState(() {
            //       _selectedIndex = 3;
            //     });
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.gamepad),
              title: Text('Game List', style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
