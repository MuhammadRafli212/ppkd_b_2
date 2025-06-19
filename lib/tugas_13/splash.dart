import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/helper/preference.dart';
import 'package:ppkd_b_2/tugas_13/hal_login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      print('isLogin: $isLogin');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HalLogin()),
      );
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
              'https://cdn.idntimes.com/content-images/post/20190622/50035353-2213423698917257-8036134146179238833-n-c673f07225b5cb7391f7858ca6347f95.jpg',
            ),
            Text('Jim Ha Kho', style: AppStyle.fontBold()),
            Spacer(),
            SafeArea(
              child: Text('V.1.0.0', style: AppStyle.fontRegular(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
