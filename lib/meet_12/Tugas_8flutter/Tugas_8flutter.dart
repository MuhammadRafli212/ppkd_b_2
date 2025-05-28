import 'package:flutter/material.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/Tugas_7flutter.dart';

class Tugas8flutter extends StatefulWidget {
  const Tugas8flutter({super.key});

  @override
  State<Tugas8flutter> createState() => _TugasDelapanState();
}

class _TugasDelapanState extends State<Tugas8flutter> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const Tugas7flutter(), const AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Text(
            'Tentang Aplikasi',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Aplikasi ini dibuat sebagai tugas Flutter yang menampilkan form input interaktif dengan Drawer, dan navigasi bawah menggunakan BottomNavigationBar.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 30),
          Text(
            'Pembuat: Muhammad Rafli Iskandar',
            style: TextStyle(fontSize: 16),
          ),
          Text('Versi: 1.0.0', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
