import 'package:flutter/material.dart';
import 'package:ppkd_b_2/tugas_13/model_latihan.dart';

class ListLatihan extends StatefulWidget {
  const ListLatihan({super.key});

  @override
  State<ListLatihan> createState() => _listLatihan();
}

class _listLatihan extends State<ListLatihan> {
  List<ModelLatihan> dataLatihan = [
    ModelLatihan(
      id: '1',
      namaLatihan: 'Push Up',
      jumlahHari: '17000',
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0595/4270/0185/files/Pump_Up_Your_Chest_With_This_Brutal_Pushup_Challenge_480x480.gif?v=1713351342',
    ),
    ModelLatihan(
      id: '2',
      namaLatihan: 'Squat Jump',
      jumlahHari: '19000',
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0595/4270/0185/files/The_30_Best_Squat_Variations_for_Every_Exerciser_and_Piece_of_Equipment___Livestrong_com_480x480.gif?v=1705401357',
    ),
    ModelLatihan(
      id: '3',
      namaLatihan: 'Jumping Jack',
      jumlahHari: '12300',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod/images/workouts/2016/03/jumpingjack-1457045563.gif?crop=1xw:0.75xh;center,top&resize=1200:*',
    ),
    ModelLatihan(
      id: '4',
      namaLatihan: 'Pull Up',
      jumlahHari: '27000',
      imageUrl:
          'https://homeworkouts.org/wp-content/uploads/anim-rear-pull-ups.gif',
    ),
    ModelLatihan(
      id: '5',
      namaLatihan: 'Dead Lift',
      jumlahHari: '435000',
      imageUrl:
          'https://www.kettlebellkings.com/cdn/shop/articles/barbell-deadlift-movement.gif?v=1692228918',
    ),
    ModelLatihan(
      id: '6',
      namaLatihan: 'Bench Press',
      jumlahHari: '25000',
      imageUrl:
          'https://www.inspireusafoundation.org/wp-content/uploads/2022/04/barbell-bench-press.gif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Favorit Latihan'),
        backgroundColor: Color(0xff697565),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: dataLatihan.length,
        itemBuilder: (BuildContext context, int index) {
          final perabotan = dataLatihan[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(perabotan.imageUrl),
            ),
            title: Text(perabotan.namaLatihan),
            subtitle: Text('jumlah ${perabotan.jumlahHari}'),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  perabotan.isFavorite = !perabotan.isFavorite;
                });
              },
              icon: Icon(
                perabotan.isFavorite ? Icons.favorite : Icons.favorite_outline,
                color: perabotan.isFavorite ? Colors.red : null,
              ),
            ),
          );
        },
      ),
    );
  }
}
