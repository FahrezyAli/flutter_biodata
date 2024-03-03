import 'package:flutter/material.dart';

import 'header.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Header(
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return const Image(
              image: NetworkImage("https://placekitten.com/400"));
        },
      ),
    );
  }
}
