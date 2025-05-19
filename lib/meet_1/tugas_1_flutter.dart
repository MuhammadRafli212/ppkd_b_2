import 'package:flutter/material.dart';

class TugasSatu extends StatelessWidget {
  const TugasSatu({super.key});
  @override
  Widget build(BuildContext context) {
    throw Scaffold(
      appBar: AppBar(
        title: Text('Profil', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nama: Muhammad Rafli', style: TextStyle(fontSize: 30)),
          Row(
            children: [
              Icon(Icons.location_city),
              Text('Jakarta', style: TextStyle(fontSize: 25)),
            ],
          ),
          Text('Seorang Pelajar yang sedang belajar flutter'),
        ],
      ),
    );
  }
}
