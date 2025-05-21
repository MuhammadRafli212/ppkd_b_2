import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  Tugas2Flutter({super.key});
  String keterangan =
      '=Nama Saya Muhammad Rafli Iskandar,tidak banyak yang bisa saya jelaskan disini jika ingin mengenal saya lebih dalam maka kenali saya secara langsung jangan menilai dari apa yg kalian dengar saja=';
  String url =
      'https://static.wikia.nocookie.net/naruto/images/d/dc/Naruto%27s_Sage_Mode.png/revision/latest/scale-to-width-down/1920?cb=20150124180545';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Profil Lengkap',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(radius: 80, backgroundImage: NetworkImage(url)),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Muhammad Rafli Iskandar',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.pinkAccent,
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Rafliiskandar774@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.phone, color: Colors.black),
                Spacer(),
                Text('082112639062'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 50,
                  width: 100,
                  color: Colors.purple,
                  child: Text(
                    'Postingan',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 50,
                  width: 50,
                  color: Colors.teal,
                  child: Text(
                    'Followers',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(keterangan, textAlign: TextAlign.justify),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(color: Colors.greenAccent),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
