import 'package:flutter/material.dart';

class Terimakasih extends StatelessWidget {
  final String? nama;
  final String? kota;
  const Terimakasih({super.key, required this.nama, required this.kota});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff9ACBD0)),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide.none),
            color: Color(0xffBEE4D0),
          ),
          child: Text(
            'Terima kasih, $nama dari $kota telah mendaftar',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
