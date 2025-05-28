import 'package:flutter/material.dart';
import 'package:ppkd_b_2/meet_12/Tugas_8flutter/Tugas_8flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tugas8flutter(),
    );
  }
}
