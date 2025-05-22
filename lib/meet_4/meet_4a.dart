import 'package:flutter/material.dart';

class Meet4a extends StatelessWidget {
  const Meet4a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 125, 236, 236)),
      body: Column(
        children: [
          Text("materi gridview"),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 1,
            mainAxisSpacing: 2,
            crossAxisSpacing: 3,
            children: <Widget>[
              Container(color: Color.fromARGB(0, 77, 134, 148)),
            ],
          ),
        ],
      ),
    );
  }
}
