import 'package:flutter/material.dart';

class Tugas3 extends StatefulWidget {
  const Tugas3({super.key});

  @override
  State<Tugas3> createState() => _Tugas3State();
}

class _Tugas3State extends State<Tugas3> {
  final TextEditingController _controllerNama = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerNo = TextEditingController();
  final TextEditingController _controllerDeskripsi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 3", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xffD2D0A0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                // color: Colors.cyanAccent,
                child: Column(
                  children: [
                    TextField(
                      controller: _controllerNama,
                      onChanged: (value) {
                        setState(() {
                          _controllerNama.text = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Nama",
                        hintStyle: TextStyle(fontSize: 15),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color(0xff574D5D),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _controllerEmail,
                      onChanged: (value) {
                        setState(() {
                          _controllerEmail.text = value;
                        });
                      },
                      readOnly: false,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xff574D5D)),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _controllerNo,
                      onChanged: (value) {
                        setState(() {
                          _controllerNo.text = value;
                        });
                      },
                      readOnly: false,
                      decoration: InputDecoration(
                        hintText: 'No.Hp',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: Color(0xff574D5D)),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _controllerDeskripsi,
                      onChanged: (value) {
                        setState(() {
                          _controllerDeskripsi.text = value;
                        });
                      },
                      readOnly: false,
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: 'Deskripsi',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color(0xff574D5D),
                            width: 6,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: BorderSide(
                            color: Color(0xff574D5D),
                            width: 6,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama:${_controllerNama.text}'),
                          Text('No.Hp:${_controllerNo.text}'),
                          Text('Email:${_controllerEmail.text}'),
                          Text('Deskripsi:${_controllerDeskripsi.text}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Photos and Videos',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox(
                height: 500,
                child: GridView.count(
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      color: Colors.brown[800],
                      child: Stack(
                        children: [
                          Text(
                            'Gambar 1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.green[900],
                      child: Stack(
                        children: [
                          Text(
                            'Gambar 2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.teal[900],
                      child: Stack(
                        children: [
                          Text(
                            'Gambar 3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.teal[900],
                      child: Stack(
                        children: [
                          Text(
                            'Gambar 4',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.teal[900],
                      child: Stack(
                        children: [
                          Text(
                            'Gambar 5',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.cyan[900],
                      child: Stack(
                        children: [
                          Text(
                            'Gambar 6',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
