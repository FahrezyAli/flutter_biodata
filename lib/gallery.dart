import 'package:flutter/material.dart';

import 'header.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Header(
      OrientationBuilder(
        builder: (builder, orientation) => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 6),
          itemCount: orientation == Orientation.portrait ? 9 : 18,
          itemBuilder: (context, index) {
            return Image(
              image: NetworkImage("https://picsum.photos/id/$index/400"),
            );
          },
        ),
      ),
    );
  }
}
