import 'package:flutter/material.dart';
import 'package:ppkd_b_2/case_siswa/db_helper_gw.dart';
import 'package:ppkd_b_2/case_siswa/model/siswa_model.dart';

class SiswaApp extends StatefulWidget {
  const SiswaApp({super.key});

  @override
  State<SiswaApp> createState() => _SiswaAppState();
}

class _SiswaAppState extends State<SiswaApp> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();
  List<SiswaModel> daftarSiswa = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DbHelperGw.getAllSiswa();
    setState(() {
      daftarSiswa = data;
    });
  }

  Future<void> simpanData() async {
    final nama = namaController.text;
    final umur = umurController.text;

    if (nama.isNotEmpty) {
      await DbHelperGw.insertSiswa(data: SiswaModel(nama: nama, umur: umur));
      namaController.clear();
      umurController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pendaftaran Siswa")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: umurController,
              decoration: InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: simpanData, child: Text('Simpan')),
            Divider(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: daftarSiswa.length,
                itemBuilder: (context, index) {
                  final siswa = daftarSiswa[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text('${siswa.id}')),
                    title: Text(siswa.nama),
                    subtitle: Text('Umur: ${siswa.umur}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
