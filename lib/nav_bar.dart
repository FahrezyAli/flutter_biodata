import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final List<Widget> children;

  const NavBar(this.items, this.children, {super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: widget.items,
        currentIndex: _index,
        onTap: (index) => setState(
          () {
            _index = index;
          },
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return widget.children[_index];
        },
      ),
    );
  }
}
