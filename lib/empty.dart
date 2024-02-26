import 'package:biodata/data.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  final String title;

  const EmptyPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Data(
        "Pengalaman",
        "Pengalaman saya bisa dibilang Alhamdulillah aman dan nyaman. Saya sudah memiliki sedikit pengalaman dengan kode sehingga saya mampu dengan baik mengikuti mata kuliah Sistem Informasi. Namun saya sedikit mengalami kesulitan dalam Kalkulus dan Matrix.",
      ),
    );
  }
}
