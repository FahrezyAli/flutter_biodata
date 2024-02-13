import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'main.dart';

class SchoolPage extends StatelessWidget {
  final String linkFoto;
  final String nama;
  final String alamat;
  final String akreditasi;

  const SchoolPage(this.linkFoto, this.nama, this.alamat, this.akreditasi,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          Container(
            margin: defaultEdge,
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width,
            child: Stack(
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                Center(
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: linkFoto,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          createBioRow("Alamat", alamat, Theme.of(context).colorScheme.primary),
          createBioRow(
              "Akreditasi", akreditasi, Theme.of(context).colorScheme.primary),
        ],
      ),
    );
  }
}

class UniversityPage extends StatelessWidget {
  final String linkFoto;
  final String nama;
  final String alamat;
  final String prodi;
  final String akreditasi;

  const UniversityPage(
      this.linkFoto, this.nama, this.alamat, this.prodi, this.akreditasi,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          Container(
            margin: defaultEdge,
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width,
            child: Stack(
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                Center(
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: linkFoto,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          createBioRow("Alamat", alamat, Theme.of(context).colorScheme.primary),
          createBioRow("Prodi", prodi, Theme.of(context).colorScheme.primary),
          createBioRow("Akreditasi Prodi", akreditasi,
              Theme.of(context).colorScheme.primary),
        ],
      ),
    );
  }
}
