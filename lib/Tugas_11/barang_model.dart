import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BarangModel {
  int? id;
  String nama;
  String jumlah;
  String jenis_barang;
  String deskripsi;

  BarangModel({
    this.id,
    required this.nama,
    required this.jumlah,
    required this.jenis_barang,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'jumlah': jumlah,
      'jenis_barang': jenis_barang,
      'deskripsi': deskripsi,
    };
  }

  factory BarangModel.fromMap(Map<String, dynamic> map) {
    return BarangModel(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      jumlah: map['jumlah'] as String,
      jenis_barang: map['jenis_barang'] as String,
      deskripsi: map['deskripsi'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BarangModel.fromJson(String source) =>
      BarangModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
