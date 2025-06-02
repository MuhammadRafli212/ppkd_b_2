import 'package:flutter/material.dart';

class Tugas9list extends StatelessWidget {
  Tugas9list({super.key});
  List<String> kategori = [
    'Face wash',
    'Toner',
    'Mouisturizer',
    'Sunscreen',
    'Body scrub',
    'Foundation',
    'Bedak',
    'Lipstik',
    'Concealer',
    'Blush on',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 9 List'),
        backgroundColor: Color(0xffFFAAAA),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: kategori.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(kategori[index]));
        },
      ),
    );
  }
}
