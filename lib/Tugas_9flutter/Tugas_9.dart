import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_9flutter/Tugas_9Home.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7a.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7b.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7c.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7d.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7e.dart';

class Tugas9 extends StatefulWidget {
  const Tugas9({super.key});

  @override
  State<Tugas9> createState() => _Tugas9flutterState();
}

class _Tugas9flutterState extends State<Tugas9> {
  int _selectedIndex = 0;
  List<Widget> listScreen = [
    CheckboxPage(),
    SwitchPage(),
    DropdownPage(),
    DatePickerPage(),
    TimePickerPage(),
    Tugas9home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas9', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff48A6A7),
      ),
      body: listScreen[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff48A6A7)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/jokowi.jpg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'TokoPeeSi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Belanja Mudah Negara Susah',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Syarat & Ketentuan', style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.dark_mode_outlined),
              title: Text('Mode Gelap', style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag_outlined),
              title: Text(
                'Pilih Kategori Produk',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.date_range_outlined),
              title: Text(
                'Pilih tanggal lahir',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.timer_outlined),
              title: Text('Atur Pengingat', style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shop_two_rounded),
              title: Text('Tugas 9', style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  _selectedIndex = 5;
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
