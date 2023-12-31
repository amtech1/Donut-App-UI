import 'package:flutter/material.dart';

class foodtile extends StatelessWidget {
  final String foodflavor;
  final String foodprice;
  final foodcolor;
  final String imagename;

  const foodtile(
      {super.key,
      required this.foodflavor,
      required this.foodprice,
      required this.imagename,
      this.foodcolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        color: foodcolor[400],
      ),
    );
  }
}
