import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SiswaModel {
  final int? id;
  final String nama;
  final String umur;
  SiswaModel({this.id, required this.nama, required this.umur});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': nama, 'umur': umur};
  }

  factory SiswaModel.fromMap(Map<String, dynamic> map) {
    return SiswaModel(
      id: map['id'] as int,
      nama: map['name'] as String,
      umur: map['umur'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SiswaModel.fromJson(String source) =>
      SiswaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
