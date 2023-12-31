import 'package:flutter/material.dart';

import '../util/Donut_tile.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});
  List donutsonsale = [
    ["ice cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "39", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "25", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "54", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        DonutTile(
          donutFlavour: donutsonsale[index][0],
          donutPrice: donutsonsale[index][1],
          donutColor: donutsonsale[index][2],
          imageName: donutsonsale[index][3],
        );
      },
    );
  }
}
