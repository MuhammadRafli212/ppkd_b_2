import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_14/model/model_game.dart';

class ProfileScreen extends StatelessWidget {
  final Game game;

  const ProfileScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.fullName), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Foto profil bulat besar
            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(game.imageUrl),
            ),

            const SizedBox(height: 12),

            // Nama besar
            Text(
              game.fullName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // Deskripsi tambahan (custom atau statis)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Karakter hebat dari dunia Game of Thrones. Lahir dari keluarga bangsawan dan memiliki kisah yang unik.",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),

            // Informasi tambahan (gelar, keluarga)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Gelar',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(game.title),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Keluarga',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(game.family),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
