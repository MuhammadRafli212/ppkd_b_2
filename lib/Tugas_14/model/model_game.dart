// To parse this JSON data, do
//
//     final game = gameFromJson(jsonString);

import 'dart:convert';

List<Game> gameFromJson(String str) =>
    List<Game>.from(json.decode(str).map((x) => Game.fromJson(x)));

String gameToJson(List<Game> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Game {
  int id;
  String firstName;
  String lastName;
  String fullName;
  String title;
  String family;
  String image;
  String imageUrl;
  String? description;

  Game({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.title,
    required this.family,
    required this.image,
    required this.imageUrl,
    this.description,
  });

  factory Game.fromJson(Map<String, dynamic> json) => Game(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    fullName: json["fullName"],
    title: json["title"],
    family: json["family"],
    image: json["image"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "fullName": fullName,
    "title": title,
    "family": family,
    "image": image,
    "imageUrl": imageUrl,
  };
}
