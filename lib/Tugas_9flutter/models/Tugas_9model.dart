import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Kosmetik {
  final String id;
  final String namaBarang;
  final String hargaBarang;
  final String imageUrl;
  bool isFavorite; // <- tambahkan ini

  Kosmetik({
    required this.id,
    required this.namaBarang,
    required this.hargaBarang,
    required this.imageUrl,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namaBarang': namaBarang,
      'hargaBarang': hargaBarang,
      'imageUrl': imageUrl,
      'isFavorite': isFavorite,
    };
  }

  factory Kosmetik.fromMap(Map<String, dynamic> map) {
    return Kosmetik(
      id: map['id'] as String,
      namaBarang: map['namaBarang'] as String,
      hargaBarang: map['hargaBarang'] as String,
      imageUrl: map['imageUrl'] as String,
      isFavorite: map['isFavorite'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Kosmetik.fromJson(String source) =>
      Kosmetik.fromMap(json.decode(source) as Map<String, dynamic>);
}
