import 'package:flutter/material.dart';
import 'package:restaurant_app/util/Donut_tile.dart';
import 'package:restaurant_app/util/food_tile.dart';

class PancakeTab extends StatelessWidget {
  PancakeTab({super.key});
  List foodssonsale = [
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
        foodtile(
          foodflavor: foodssonsale[index][0],
          foodprice: foodssonsale[index][1],
          foodcolor: foodssonsale[index][2],
          imagename: foodssonsale[index][3],
        );
      },
    );
  }
}
