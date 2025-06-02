import 'package:flutter/material.dart';
import 'package:ppkd_b_2/Tugas_9flutter/Tugas_9List.dart';
import 'package:ppkd_b_2/Tugas_9flutter/Tugas_9list_in_map.dart';
import 'package:ppkd_b_2/Tugas_9flutter/Tugas_9model_list.dart';

class Tugas9home extends StatelessWidget {
  const Tugas9home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tugas9list()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan[200],
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: Text('List'),
            ),
            SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tugas9listInMap()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan[200],
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: Text('List In Map'),
            ),
            SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tugas9modelList()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan[200],
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: Text('Model'),
            ),
          ],
        ),
      ),
    );
  }
}
