import 'package:flutter/material.dart';

class Tugas9listInMap extends StatelessWidget {
  Tugas9listInMap({super.key});

  List<Map<String, dynamic>> kategori = [
    {'Nama': 'Face wash', 'icon': Icons.wash_rounded},
    {'Nama': 'Lipstik', 'icon': Icons.brush_outlined},
    {'Nama': 'Sunscreen', 'icon': Icons.sunny},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 9 List of Map'),
        backgroundColor: Color(0xffFAA4BD),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: kategori.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${kategori[index]['Nama']}'),
            leading: Icon(kategori[index]['icon']),
          );
        },
      ),
    );
  }
}
