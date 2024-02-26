import 'package:biodata/data.dart';
import 'package:biodata/empty.dart';
import 'package:biodata/main.dart';
import 'package:biodata/school.dart';
import 'package:flutter/material.dart';

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: defaultEdge,
          child: const CircleAvatar(
            radius: 100.0,
            foregroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ),
        const Data(
          "Nama",
          "Ali Ahmad Fahrezy",
        ),
        const Data(
          "Alamat",
          "Jalan Sedati Agung Ⅱ No.21, RT.05/RW.03, Sedati Agung, Sedati",
        ),
        const Data(
          "Tempat/Tanggal Lahir",
          "Medan/24 Desember 2004",
        ),
        const Data(
          "Hobi",
          "Mengetik",
        ),
        const Data(
          "Keahlian",
          "Software Programming",
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: ClickableData(
            "Pengalaman",
            " ->",
            EmptyPage("Pengalaman"),
          ),
        ),
      ],
    );
  }
}

class Akademika extends StatelessWidget {
  const Akademika({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ClickableData(
          "SD",
          "SDS Taman Harapan",
          SchoolPage(
            "https://yt3.googleusercontent.com/ytc/AIf8zZQmea_8Ghk0wcgsCWpdMaunYOQI36VQ7T3RGMeXKw=s900-c-k-c0x00ffffff-no-rj",
            "SDS Taman Harapan",
            "Jl.seksama No.183, BINJAI, Kec. Medan Denai, Kota Medan Prov. Sumatera Utara ",
            "A",
          ),
        ),
        ClickableData(
          "SMP",
          "SMP Negeri 6 Medan",
          SchoolPage(
            "https://linipost.com/wp-content/uploads/2020/07/IMG_20200710_172542.jpg",
            "SMP Negeri 6 Medan",
            "Jl. Bahagia No. 42 Medan, Teladan Timur, Kec. Medan Kota, Kota Medan Prov. Sumatera Utara ",
            "A",
          ),
        ),
        ClickableData(
          "SMA",
          "SMA Negeri 5 Medan",
          SchoolPage(
            "https://www.jurnalasia.com/wp-content/uploads/2019/07/IMG-20190709-WA0065.jpg",
            "SMA Negeri 5 Medan",
            "JL. PELAJAR NO. 17, Teladan Timur, Kec. Medan Kota, Kota Medan Prov. Sumatera Utara",
            "A",
          ),
        ),
        ClickableData(
          "Perguruan Tinggi",
          "Universitas Airlangga",
          UniversityPage(
            "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/12/FotoJet-2023-07-12T060228238-66900618.jpg",
            "Universitas Airlangga",
            "Kampus C Mulyorejo - Kec. Mulyorejo, Kota Surabaya Prov. Jawa Timur",
            "S1 Sistem Informasi",
            "Unggul",
          ),
        ),
      ],
    );
  }
}

class Inputs extends StatelessWidget {
  const Inputs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        FillableData("Kritik"),
        FillableData("Saran"),
      ],
    );
  }
}
