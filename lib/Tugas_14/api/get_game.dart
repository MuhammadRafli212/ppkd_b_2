import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_2/Tugas_14/model/model_game.dart';

Future<List<Game>> game() async {
  final response = await http.get(
    Uri.parse('https://thronesapi.com/api/v2/Characters'),
  );
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final List<dynamic> userGame = data;
    return userGame.map((user) => Game.fromJson(user)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
