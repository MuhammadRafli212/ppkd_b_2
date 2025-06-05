import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_11/barang_model.dart';
import 'package:ppkd_b_2/Tugas_11/db_tugas.dart';

class Tugas11 extends StatefulWidget {
  const Tugas11({super.key});

  @override
  State<Tugas11> createState() => _TugasBerapaYaState();
}

class _TugasBerapaYaState extends State<Tugas11> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _jumlahController = TextEditingController();
  final TextEditingController _jenisController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  List<BarangModel> daftarbarang = [];

  @override
  void initState() {
    muatData();
    super.initState();
  }

  Future<void> muatData() async {
    final data = await DbTugas.getAllBarang();
    setState(() {
      daftarbarang = data;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pendataan Inventaris Barang',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff90D1CA),
      ),
      backgroundColor: Color(0xffB6C7AA),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Form Pendataan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _namaController,
                    decoration: InputDecoration(
                      labelText: 'Nama Barang',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _jumlahController,
                    decoration: InputDecoration(
                      labelText: 'Jumlah',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _jenisController,
                    decoration: InputDecoration(
                      labelText: 'Jenis Barang',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator:
                        (value) =>
                            (value == null || value.isEmpty)
                                ? 'Wajib harus diisi'
                                : null,
                    controller: _deskripsiController,
                    decoration: InputDecoration(
                      labelText: 'Deskripsi ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        simpanData();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      backgroundColor: Color(0xff129990),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text('Simpan'),
                  ),
                  Divider(height: 38),
                ],
              ),
            ),
            Text(
              'Daftar Barang',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                //physics: NeverScrollableScrollPhysics(),
                itemCount: daftarbarang.length,
                itemBuilder: (BuildContext context, int index) {
                  final barang = daftarbarang[index];
                  return Card(
                    child: ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: Text('Details'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: ${barang.nama}'),
                                    Text('Jumlah: ${barang.jumlah}'),
                                    Text(
                                      'Jenis Barang: ${barang.jenis_barang}',
                                    ),
                                    Text('Deskripsi: ${barang.deskripsi}'),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Tutup'),
                                  ),
                                ],
                              ),
                        );
                      },
                      leading: CircleAvatar(child: Text('${barang.id}')),
                      title: Text(
                        barang.nama,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Jumlah: ${barang.jumlah}')],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () async {
                          await DbTugas.deleteBarang(
                            barang.id!,
                          ); // pastikan id tidak null
                          muatData(); // refresh daftar
                        },
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
