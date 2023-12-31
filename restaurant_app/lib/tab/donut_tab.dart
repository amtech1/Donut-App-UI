import 'package:flutter/material.dart';
import 'package:restaurant_app/util/Donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsonSale = [
    ['Ice Cream', '36', Colors.blue, 'lib/images/icecream_donut.png'],
    ['Strawberry', '45', Colors.red, 'lib/images/strawberry_donut.png'],
    ['Grape Ape', '84', Colors.purple, 'lib/images/grape_donut.png'],
    ['Choco', '96', Colors.brown, 'lib/images/chocolate_donut.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: donutsonSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavour: donutsonSale[index][0],
            donutPrice: donutsonSale[index][1],
            donutColor: donutsonSale[index][2],
            imageName: donutsonSale[index][3],
          );
        });
  }
}
