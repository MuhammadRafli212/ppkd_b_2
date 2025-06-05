import 'package:flutter/material.dart';
import 'package:ppkd_b_2/helper/preference.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7a.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7b.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7c.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7d.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/tugas_7e.dart';
import 'package:ppkd_b_2/meet_6/Tugas_6.dart';

class Tugas7flutter extends StatefulWidget {
  const Tugas7flutter({super.key});

  @override
  State<Tugas7flutter> createState() => _Tugas7flutterState();
}

class _Tugas7flutterState extends State<Tugas7flutter> {
  int _selectedIndex = 0;
  List<Widget> listScreen = [
    CheckboxPage(),
    SwitchPage(),
    DropdownPage(),
    DatePickerPage(),
    TimePickerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas7', style: TextStyle(color: Colors.white)),
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
              leading: Icon(Icons.exit_to_app_sharp),
              iconColor: Colors.redAccent,
              title: Text('Log Out', style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  PreferenceHandler.deleteLogin();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Tugas6()),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
