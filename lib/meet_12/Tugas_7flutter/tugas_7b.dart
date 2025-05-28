import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitchOn ? Colors.blueGrey : Colors.white,
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Switch(
                  value: isSwitchOn,
                  onChanged: (value) {
                    setState(() {
                      isSwitchOn = value;
                    });
                  },
                ),
                SizedBox(width: 8),
                Text('Aktifkan Mode Gelap', style: TextStyle(fontSize: 18)),
              ],
            ),
            Text(isSwitchOn ? "Mode Gelap aktif" : "Mode Terang aktif"),
          ],
        ),
      ),
    );
  }
}
