import 'package:flutter/material.dart';

class Meet2 extends StatelessWidget {
  const Meet2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text(
          "Pertemuan 2",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //text
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'PPKD Batch 2',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Kelas Mobile Programming')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Angkatan 2'),
              SizedBox(width: 20),
              Text('Menyala!!!!!'),
            ],
          ),
          //penggunaan pading
          Padding(
            padding: const EdgeInsets.all(150),
            child: Row(children: [Text('Jajal dulu lah')]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Row(children: [Text('skuylahhh')]),
          ),
          Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2),
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.lightBlue],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Center(
              child: Text(
                "ini container",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //expanded
          Row(
            children: [
              Expanded(child: Container(height: 30, color: Colors.redAccent)),
              Expanded(child: Container(height: 30, color: Colors.cyanAccent)),
              Expanded(
                child: Container(height: 30, color: Colors.yellowAccent),
              ),
            ],
          ),

          Expanded(child: Container(color: Colors.lightGreenAccent)),
        ],
      ),
    );
  }
}
