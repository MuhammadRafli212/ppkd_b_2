import 'package:flutter/material.dart';

class Meet4b extends StatelessWidget {
  const Meet4b({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("meet 4b", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xff547D5D),
      ),
      body: Column(
        children: [
          Text('Text field Widget'),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: "Masukkan nama",
              hintStyle: TextStyle(fontSize: 12),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffD2D0A0), width: 1),
              ),
            ),
          ),
          SizedBox(height: 24),
          TextField(
            readOnly: false,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.visibility),
              prefixIcon: Icon(Icons.lock),
              hintText: 'masukkan password',
              filled: true,
              fillColor: Color(0xffD2D0A0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffD2D0A0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
