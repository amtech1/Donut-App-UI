import 'package:flutter/material.dart';
import 'package:restaurant_app/Tabs/Burger_tab.dart';
import 'package:restaurant_app/Tabs/Donut_tab.dart';
import 'package:restaurant_app/Tabs/Pancake_tab.dart';
import 'package:restaurant_app/Tabs/Pizza_tab.dart';
import 'package:restaurant_app/Tabs/Smoothie_tab.dart';
import 'package:restaurant_app/util/my_Tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> mytabs = [
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ),
              )),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[800],
                    size: 36,
                  )),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'iwant to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            TabBar(tabs: mytabs),
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakeTab(),
                PizzaTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
