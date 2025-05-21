import 'package:flutter/material.dart';
import 'package:ppkd_b_2/meet_1/meet_1.dart';
import 'package:ppkd_b_2/meet_1/tugas_1_flutter.dart';
import 'package:ppkd_b_2/meet_2/meet_2.dart';
import 'package:ppkd_b_2/meet_2/tugas_2_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tugas2Flutter());
  }
}
