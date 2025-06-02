import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_9flutter/Tugas_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Tugas9());
  }
}
