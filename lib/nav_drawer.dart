import 'package:biodata/gallery.dart';
import 'package:biodata/main.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Ali Ahmad Fahrezy"),
            accountEmail: Text("aluahmadfahrezy@gmail.com"),
            currentAccountPicture: CircleAvatar(
              radius: 100.0,
              foregroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ),
          _drawerItem(
            Icons.account_box,
            "Biodata",
            () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ),
            ),
          ),
          _drawerItem(
            Icons.browse_gallery,
            "Gallery",
            () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const Gallery(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _drawerItem(IconData icon, String text, GestureTapCallback onTap) {
  return ListTile(
    title: Row(
      children: [
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
