import 'package:biodata/nav_bar.dart';
import 'package:biodata/page.dart';
import 'package:flutter/material.dart';

import 'header.dart';

void main() {
  runApp(const MyApp());
}

EdgeInsets defaultEdge =
    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0);

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
    return const Header(
      NavBar(
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_sharp),
            label: "Profil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_sharp),
            label: "Akademik",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_sharp),
            label: "Feedback",
          ),
        ],
        [
          Biodata(),
          Akademika(),
          Inputs(),
        ],
      ),
    );
  }
}
