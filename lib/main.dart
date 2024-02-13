import 'package:biodata/empty.dart';
import 'package:biodata/school.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

EdgeInsets defaultEdge =
    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0);

Container createBioRow(String rowName, String rowDesc, Color color) {
  return Container(
    margin: defaultEdge,
    decoration: BoxDecoration(
      border: Border.all(color: color, width: 2.0),
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text.rich(
        TextSpan(
          text: rowName,
          style: const TextStyle(fontSize: 11.0),
          children: <TextSpan>[
            TextSpan(
              text: "\n$rowDesc",
              style: const TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ),
    ),
  );
}

Ink createClickableBioRow(String rowName, String rowDesc, Color color) {
  return Ink(
    decoration: BoxDecoration(
      border: Border.all(color: color, width: 2.0),
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text.rich(
        TextSpan(
          text: rowName,
          style: const TextStyle(fontSize: 11.0),
          children: <TextSpan>[
            TextSpan(
              text: "\n$rowDesc",
              style: const TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Biodata Ali Ahmad Fahrezy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            margin: defaultEdge,
            child: const Image(
              image: AssetImage('assets/images/profile.jpg'),
            ),
          ),
          createBioRow(
            "Nama",
            "Ali Ahmad Fahrezy",
            Theme.of(context).colorScheme.primary,
          ),
          createBioRow(
            "Alamat",
            "Jalan Sedati Agung Ⅱ No.21, RT.05/RW.03, Sedati Agung, Sedati",
            Theme.of(context).colorScheme.primary,
          ),
          createBioRow(
            "Tempat/Tanggal Lahir",
            "Medan/24 Desember 2004",
            Theme.of(context).colorScheme.primary,
          ),
          createBioRow(
            "Hobi",
            "Mengetik",
            Theme.of(context).colorScheme.primary,
          ),
          Padding(
            padding: defaultEdge,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SchoolPage(
                      "https://yt3.googleusercontent.com/ytc/AIf8zZQmea_8Ghk0wcgsCWpdMaunYOQI36VQ7T3RGMeXKw=s900-c-k-c0x00ffffff-no-rj",
                      "SDS Taman Harapan",
                      "Jl.seksama No.183, BINJAI, Kec. Medan Denai, Kota Medan Prov. Sumatera Utara ",
                      "A",
                    ),
                  ),
                );
              },
              child: createClickableBioRow(
                "SD",
                "SD Taman Harapan",
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: defaultEdge,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SchoolPage(
                      "https://linipost.com/wp-content/uploads/2020/07/IMG_20200710_172542.jpg",
                      "SMP Negeri 6 Medan",
                      "Jl. Bahagia No. 42 Medan, Teladan Timur, Kec. Medan Kota, Kota Medan Prov. Sumatera Utara ",
                      "A",
                    ),
                  ),
                );
              },
              child: createClickableBioRow(
                "SMP",
                "SMP Negeri 6 Medan",
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: defaultEdge,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SchoolPage(
                      "https://www.jurnalasia.com/wp-content/uploads/2019/07/IMG-20190709-WA0065.jpg",
                      "SMA Negeri 5 Medan",
                      "JL. PELAJAR NO. 17, Teladan Timur, Kec. Medan Kota, Kota Medan Prov. Sumatera Utara",
                      "A",
                    ),
                  ),
                );
              },
              child: createClickableBioRow(
                "SMA",
                "SMA Negeri 5 Medan",
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: defaultEdge,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UniversityPage(
                      "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/12/FotoJet-2023-07-12T060228238-66900618.jpg",
                      "Universitas Airlangga",
                      "Kampus C Mulyorejo - Kec. Mulyorejo, Kota Surabaya Prov. Jawa Timur",
                      "S1 Sistem Informasi",
                      "Unggul",
                    ),
                  ),
                );
              },
              child: createClickableBioRow(
                "Perguruan Tinggi",
                "Universitas Airlangga",
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: defaultEdge,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmptyPage("Pengalaman"),
                  ),
                );
              },
              child: createClickableBioRow(
                "Pengalaman",
                " ->",
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: createBioRow(
              "Keahlian",
              "Software Programming",
              Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
