import 'package:flutter/material.dart';

class Meet2A extends StatelessWidget {
  const Meet2A({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Pertemuan 2A',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 300,
        child: Column(
          children: [
            Text('Column'),
            Spacer(),
            Text('PPKD'),
            Spacer(),
            Text('PPKD'),
          ],
        ),
      ),
    );
  }
}
