import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Syarat & Ketentuan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Container(
          height: 350,
          width: double.infinity,
          color: Colors.grey[300],
          child: SingleChildScrollView(
            child: Text(
              'Berikut adalah syarat dan ketentuan untuk memenuhi persyaratan pendaftaran',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        CheckboxListTile(
          title: const Text(
            'Saya menyetujui semua persyaratan yang berlaku',
            style: TextStyle(fontSize: 13),
          ),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        Center(
          child: ElevatedButton(
            onPressed: isChecked ? () {} : null,
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff48A6A7)),
            child: Text(
              isChecked
                  ? 'Lanjutkan pendaftaran diperbolehkan'
                  : 'Anda belum bisa melanjutkan',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
