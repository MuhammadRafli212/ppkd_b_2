import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_9flutter/models/Tugas_9model.dart';

class Tugas9modelList extends StatefulWidget {
  const Tugas9modelList({super.key});

  @override
  State<Tugas9modelList> createState() => _TugasSembilanModelState();
}

class _TugasSembilanModelState extends State<Tugas9modelList> {
  List<Kosmetik> dataPerabotan = [
    Kosmetik(
      id: '1',
      namaBarang: 'Face Wash',
      hargaBarang: '17000',
      imageUrl:
          'https://images.soco.id/a380af2d-4c71-4737-9fee-4ae6b9530cc6-.jpg',
    ),
    Kosmetik(
      id: '2',
      namaBarang: 'Toner',
      hargaBarang: '19000',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxWXOL2xg48UOHmyCkwmIQZmzgbTXmxmH9hQ&s',
    ),
    Kosmetik(
      id: '3',
      namaBarang: 'Moisturizer',
      hargaBarang: '12300',
      imageUrl:
          'https://images.harpersbazaar.co.id/unsafe/trim/0x0/smart/media/50b910f3c6a052bb60c3c7e9d8a1becf.jpg',
    ),
    Kosmetik(
      id: '4',
      namaBarang: 'Sunscreen',
      hargaBarang: '27000',
      imageUrl:
          'https://blog.luxehouze.com/wp-content/uploads/2023/10/Hero_Blog_Banner_1100x708px_op1-16-9.jpg',
    ),
    Kosmetik(
      id: '5',
      namaBarang: 'Body scrub',
      hargaBarang: '435000',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRVLOR2oqYnmbHcPERuDHbQ0ZrWmxv_TnxSGFVH4F3ifpzOBUlkUaz0QjVGWjI_yPAKnU&usqp=CAU',
    ),
    Kosmetik(
      id: '6',
      namaBarang: 'Foundation',
      hargaBarang: '25000',
      imageUrl:
          'https://t-2.tstatic.net/shopping/foto/bank/images/make-over-powerstay-weightless-liquid-foundation12.jpg',
    ),
    Kosmetik(
      id: '7',
      namaBarang: 'Bedak',
      hargaBarang: '5000',
      imageUrl:
          'https://makeover-ecommerce-bucket.s3.ap-southeast-1.amazonaws.com/images/productthumbnail/da73a2f5429e3ba9d87215ae2eceb1adffe71897.png',
    ),
    Kosmetik(
      id: '8',
      namaBarang: 'Lipstik',
      hargaBarang: '5000',
      imageUrl:
          'https://asset-a.grid.id/crop/67x64:762x527/700x0/photo/2019/04/27/134614270.jpg',
    ),
    Kosmetik(
      id: '9',
      namaBarang: 'Concealer',
      hargaBarang: '16000',
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2020/03/21/b3ff7a80-86c7-48a9-b194-f273bb9a047a.jpeg?q=90&w=480',
    ),
    Kosmetik(
      id: '10',
      namaBarang: 'Blush on',
      hargaBarang: '14000',
      imageUrl:
          'https://img.id.my-best.com/product_images/4f19a2d40b3b2a03368a0d7f439b9e6b.png?ixlib=rails-4.3.1&q=70&lossless=0&w=800&h=800&fit=clip&s=2897bd9692df9b7c2d13b31a28d9d455',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 9 Model'),
        backgroundColor: Color(0xffFAA4BD),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: dataPerabotan.length,
        itemBuilder: (BuildContext context, int index) {
          final perabotan = dataPerabotan[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(perabotan.imageUrl),
            ),
            title: Text(perabotan.namaBarang),
            subtitle: Text('Rp. ${perabotan.hargaBarang}'),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  perabotan.isFavorite = !perabotan.isFavorite;
                });
              },
              icon: Icon(
                perabotan.isFavorite ? Icons.favorite : Icons.shop_2_rounded,
                color: perabotan.isFavorite ? Colors.red : null,
              ),
            ),
          );
        },
      ),
    );
  }
}
