import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/helper/preference.dart';
import 'package:ppkd_b_2/meet_16/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      print("isLogin: $isLogin");
      // if (isLogin) {
      //   return Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => Tugas7flutter()),
      //   );
      // } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreenApp()),
      );
      //}
    });
  }

  @override
  void initState() {
    changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            Image.network(
              'https://logosenvector.com/logo/img/samsung-galaxy-s25-37204.png',
            ),
            SizedBox(height: 10),
            Text("Saraf App", style: AppStyle.fontBold()),
            Spacer(),
            SafeArea(
              child: Text("v 1.0.0", style: AppStyle.fontRegular(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
