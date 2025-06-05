import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_11/Tugas_11.dart';
import 'package:ppkd_b_2/meet_12/Tugas_7flutter/Tugas_7flutter.dart';
import 'package:ppkd_b_2/meet_12/Tugas_8flutter/Tugas_8flutter.dart';
import 'package:ppkd_b_2/meet_16/login_screen.dart';
import 'package:ppkd_b_2/meet_16/register_screen.dart';
import 'package:ppkd_b_2/meet_6/Tugas_6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: LoginScreenApp(),
      routes: {
        '/': (context) => Tugas11(),
        "/login": (context) => Tugas6(),
        "/Homescreen": (context) => Tugas8flutter(),
        "/Tujuh": (context) => Tugas7flutter(),
        LoginScreenApp.id: (context) => LoginScreenApp(),
        RegisterScreenApp.id: (context) => RegisterScreenApp(),
      },
      title: "PPKD B 2",

      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffBBD8A3)),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
        ),
      ),
    );
  }
}
