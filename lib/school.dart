import 'package:biodata/data.dart';
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
            height: MediaQuery.sizeOf(context).height * 0.25,
            width: MediaQuery.sizeOf(context).width,
            child: Stack(
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: linkFoto,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Data("Alamat", alamat),
          Data("Akreditasi", akreditasi),
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
            height: MediaQuery.sizeOf(context).height * 0.25,
            width: MediaQuery.sizeOf(context).width,
            child: Stack(
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: linkFoto,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Data("Alamat", alamat),
          Data("Prodi", prodi),
          Data("Akreditasi Prodi", akreditasi),
        ],
      ),
    );
  }
}
