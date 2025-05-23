import 'package:flutter/material.dart';

class Tugas4 extends StatefulWidget {
  const Tugas4({super.key});

  @override
  State<Tugas4> createState() => _Tugas4State();
}

class _Tugas4State extends State<Tugas4> {
  final TextEditingController _controllerNama = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerNo = TextEditingController();
  final TextEditingController _controllerDeskripsi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 4', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  TextField(
                    controller: _controllerNama,
                    onChanged: (value) {
                      setState(() {});
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
                      setState(() {});
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
                      setState(() {});
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
                      setState(() {});
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
                        Text('Nama: ${_controllerNama.text}'),
                        Text('No.Hp: ${_controllerNo.text}'),
                        Text('Email: ${_controllerEmail.text}'),
                        Text('Deskripsi: ${_controllerDeskripsi.text}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Produk Chart'),
                SizedBox(height: 14),
                Card(
                  elevation: 6,
                  child: ListTile(
                    leading: Image.asset('assets/images/sepatu.jpg'),
                    shape: CircleBorder(),
                    title: Text('Sepatu Adidas'),
                    subtitle: Text('Rp1.800.000'),
                    trailing: Icon(Icons.shop),
                  ),
                ),
                SizedBox(height: 14),
                Card(
                  elevation: 6,
                  child: ListTile(
                    leading: Image.asset('assets/images/jaket.jpg'),
                    shape: CircleBorder(),
                    title: Text('Jaket Stone Islands'),
                    subtitle: Text('Rp3.200.000'),
                    trailing: Icon(Icons.shop),
                  ),
                ),
                SizedBox(height: 14),
                Card(
                  elevation: 6,
                  child: ListTile(
                    leading: Image.asset('assets/images/ket.jpg'),
                    shape: CircleBorder(),
                    title: Text('Jaket Tracktop Ellese'),
                    subtitle: Text('Rp1.500.000'),
                    trailing: Icon(Icons.shop),
                  ),
                ),
                SizedBox(height: 14),
                Card(
                  elevation: 6,
                  child: ListTile(
                    leading: Image.asset('assets/images/baju.jpg'),
                    shape: CircleBorder(),
                    title: Text('baju Carhartt'),
                    subtitle: Text('Rp 800.000'),
                    trailing: Icon(Icons.shop),
                  ),
                ),
                SizedBox(height: 14),
                Card(
                  elevation: 6,
                  child: ListTile(
                    leading: Image.asset('assets/images/celana.jpg'),
                    shape: CircleBorder(),
                    title: Text('Celana Sage Denim'),
                    subtitle: Text('Rp1.200.000'),
                    trailing: Icon(Icons.shop),
                  ),
                ),
                SizedBox(height: 14),
                Card(
                  elevation: 6,
                  child: ListTile(
                    leading: Image.asset('assets/images/topi.jpg'),
                    shape: CircleBorder(),
                    title: Text('Topi Bean Pole'),
                    subtitle: Text('Rp 450.000'),
                    trailing: Icon(Icons.shop),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
