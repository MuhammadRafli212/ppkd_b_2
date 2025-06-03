import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_10flutter/Hal_terimakasih.dart';

class TugasSepuluh extends StatefulWidget {
  const TugasSepuluh({super.key});

  @override
  State<TugasSepuluh> createState() => _TugasSepuluhState();
}

class _TugasSepuluhState extends State<TugasSepuluh> {
  final _formKey = GlobalKey<FormState>();
  final _namaLengkapController = TextEditingController();
  final _emailController = TextEditingController();
  final _noHpController = TextEditingController();
  final _kotaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 10'),
        backgroundColor: Color(0xff9ACBD0),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaLengkapController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama harus diisi';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email harus diisi';
                  } else if (!value.contains('@')) {
                    return 'Email tidak valid';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _noHpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'No. Handphone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _kotaController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kota Domisili harus diisi';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Domisili',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Konfirmasi'),
                          backgroundColor: Color(0xffBDDDE4),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nama: ${_namaLengkapController.text}'),
                              Text('Email: ${_emailController.text}'),
                              Text('No. Hp: ${_noHpController.text}'),
                              Text('Kota Domisili: ${_kotaController.text}'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => Terimakasih(
                                          nama: _namaLengkapController.text,
                                          kota: _kotaController.text,
                                        ),
                                  ),
                                );
                              },
                              child: Text('Lanjut'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Color(0xff007074),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('Daftar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
