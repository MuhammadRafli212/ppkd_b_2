import 'package:flutter/material.dart';
import 'package:ppkd_b_2/meet_16/login_screen.dart';
import 'package:ppkd_b_2/meet_16/register_screen.dart';
import 'package:ppkd_b_2/tugas_13/beranda.dart';
import 'package:ppkd_b_2/tugas_13/hal_login.dart';
import 'package:ppkd_b_2/tugas_13/hal_register.dart';
import 'package:ppkd_b_2/tugas_13/splash.dart';

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
        '/': (context) => Splash(),
        "/login": (context) => HalLogin(),
        "/Homescreen": (context) => Beranda(),
        //"/Tujuh": (context) => Tugas7flutter(),
        LoginScreenApp.id: (context) => HalLogin(),
        RegisterScreenApp.id: (context) => HalRegister(),
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
