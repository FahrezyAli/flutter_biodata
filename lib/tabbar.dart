import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List<Widget> icons;
  final List<Widget> children;

  const MyTabBar(this.icons, this.children, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: icons.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
          bottom: TabBar(tabs: icons),
        ),
        body: TabBarView(children: children),
      ),
    );
  }
}
