import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/meet_11/login_screen.dart';
import 'package:ppkd_b_2/meet_12/meet_12a.dart';

class MeetDuaBelasC extends StatefulWidget {
  const MeetDuaBelasC({super.key});

  @override
  State<MeetDuaBelasC> createState() => _MeetDuaBelasCState();
}

class _MeetDuaBelasCState extends State<MeetDuaBelasC> {
  int _selectedIndex = 0;
  static const List<Widget> _screen = [
    Center(child: Text("Halaman 1")),
    // Center(child: Text("Halaman 2")),
    Meet12AInputWidget(),
    Center(child: Text("Halaman 3")),
  ];
  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print("Halaman saat ini : $_selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Menu Drawer")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppColor.black22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(''),
                  ),
                  Text(
                    "Andrea Surya Habibie",
                    style: AppStyle.fontBold(fontSize: 16),
                  ),
                  Text(
                    "projecthabibie@gmail.com",
                    style: AppStyle.fontBold(fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: AppColor.black22),
              title: Text("Home", style: AppStyle.fontBold(fontSize: 14)),
              onTap: () {
                _itemTapped(0);
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.key, color: AppColor.black22),
              title: Text(
                "Ubah Password",
                style: AppStyle.fontBold(fontSize: 14),
              ),
              onTap: () {
                _itemTapped(1);
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: AppColor.orange),
              title: Text("Keluar", style: AppStyle.fontBold(fontSize: 14)),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: _screen[_selectedIndex],
    );
  }
}
