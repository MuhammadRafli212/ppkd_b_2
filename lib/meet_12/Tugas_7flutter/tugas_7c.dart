import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String? selectedCategory;
  final List<String> categories = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lainnya',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Pilih Kategori Produk',
            border: OutlineInputBorder(),
          ),
          value: selectedCategory,
          items:
              categories
                  .map(
                    (item) => DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
          onChanged: (value) {
            setState(() {
              selectedCategory = value;
            });
          },
        ),
        const SizedBox(height: 20),
        if (selectedCategory != null)
          Text(
            'Anda memilih kategori: $selectedCategory',
            style: const TextStyle(fontSize: 16),
          ),
      ],
    );
  }
}
