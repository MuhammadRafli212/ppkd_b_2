import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_11/barang_model.dart';
import 'package:ppkd_b_2/Tugas_11/db_tugas.dart';
import 'package:ppkd_b_2/Tugas_11/update_screen.dart';

class Tugas11 extends StatefulWidget {
  const Tugas11({super.key});

  @override
  State<Tugas11> createState() => _TugasBerapaYaState();
}

class _TugasBerapaYaState extends State<Tugas11> {
  final _namaController = TextEditingController();
  final _jumlahController = TextEditingController();
  final _jenisController = TextEditingController();
  final _deskripsiController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  List<BarangModel> daftarBarang = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DbTugas.getAllBarang();
    setState(() {
      daftarBarang = data;
    });
  }

  Future<void> simpanData() async {
    final nama = _namaController.text;
    final jumlah = _jumlahController.text;
    final jenis = _jenisController.text;
    final deskripsi = _deskripsiController.text;

    if (nama.isNotEmpty) {
      await DbTugas.insertBarang(
        BarangModel(
          nama: nama,
          jumlah: jumlah,
          jenis_barang: jenis,
          deskripsi: deskripsi,
        ),
      );
      _namaController.clear();
      _jumlahController.clear();
      _jenisController.clear();
      _deskripsiController.clear();
      muatData();
    }
  }

  Future<void> hapusBarang(int id) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Konfirmasi'),
            content: const Text(
              'Apakah Anda yakin ingin menghapus barang ini?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Batal'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Hapus', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
    );

    if (confirm == true) {
      await DbTugas.deleteBarang(
        id,
      ); // <- Memanggil fungsi delete yang sudah benar
      muatData();
    }
  }

  void pindahKeEdit(BarangModel barang) async {
    final hasil = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => EditBarangPage(barang: barang)),
    );
    if (hasil == true) {
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendataan Inventaris Barang'),
        backgroundColor: const Color(0xff90D1CA),
      ),
      backgroundColor: const Color(0xffB6C7AA),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _namaController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Barang',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value!.isEmpty ? 'Wajib diisi' : null,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _jumlahController,
                    decoration: const InputDecoration(
                      labelText: 'Jumlah',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value!.isEmpty ? 'Wajib diisi' : null,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _jenisController,
                    decoration: const InputDecoration(
                      labelText: 'Jenis Barang',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value!.isEmpty ? 'Wajib diisi' : null,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _deskripsiController,
                    decoration: const InputDecoration(
                      labelText: 'Deskripsi',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value!.isEmpty ? 'Wajib diisi' : null,
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        simpanData();
                      }
                    },
                    child: const Text('Simpan'),
                  ),
                  const Divider(height: 30),
                ],
              ),
            ),
            const Text(
              'Daftar Barang',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: daftarBarang.length,
                itemBuilder: (context, index) {
                  final barang = daftarBarang[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Text('${barang.id}')),
                      title: Text(barang.nama),
                      subtitle: Text('Jumlah: ${barang.jumlah}'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder:
                              (_) => AlertDialog(
                                title: const Text('Detail Barang'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: ${barang.nama}'),
                                    Text('Jumlah: ${barang.jumlah}'),
                                    Text('Jenis: ${barang.jenis_barang}'),
                                    Text('Deskripsi: ${barang.deskripsi}'),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('Tutup'),
                                  ),
                                ],
                              ),
                        );
                      },
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.orange),
                            onPressed: () => pindahKeEdit(barang),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => hapusBarang(barang.id!),
                          ),
                        ],
                      ),
                    ),
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
