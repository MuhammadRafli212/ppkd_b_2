import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_11/barang_model.dart';
import 'package:ppkd_b_2/Tugas_11/db_tugas.dart';

class EditBarangPage extends StatefulWidget {
  final BarangModel barang;

  const EditBarangPage({super.key, required this.barang});

  @override
  State<EditBarangPage> createState() => _EditBarangPageState();
}

class _EditBarangPageState extends State<EditBarangPage> {
  late TextEditingController namaController;
  late TextEditingController jumlahController;
  late TextEditingController jenisController;
  late TextEditingController deskripsiController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController(text: widget.barang.nama);
    jumlahController = TextEditingController(text: widget.barang.jumlah);
    jenisController = TextEditingController(text: widget.barang.jenis_barang);
    deskripsiController = TextEditingController(text: widget.barang.deskripsi);
  }

  Future<void> updateBarang() async {
    final updatedBarang = BarangModel(
      id: widget.barang.id,
      nama: namaController.text,
      jumlah: jumlahController.text,
      jenis_barang: jenisController.text,
      deskripsi: deskripsiController.text,
    );
    await DbTugas.updateBarang(updatedBarang);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Barang")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: jumlahController,
              decoration: const InputDecoration(labelText: 'Jumlah'),
            ),
            TextField(
              controller: jenisController,
              decoration: const InputDecoration(labelText: 'Jenis Barang'),
            ),
            TextField(
              controller: deskripsiController,
              decoration: const InputDecoration(labelText: 'Deskripsi'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: updateBarang,
              child: const Text("Simpan Perubahan"),
            ),
          ],
        ),
      ),
    );
  }
}
