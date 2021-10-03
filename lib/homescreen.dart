import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:pharma/mainscreen.dart';
import 'package:pharma/menu_screen.dart';
import 'package:pharma/menuitem.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  MenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        style: DrawerStyle.Style1,
        menuScreen: Menu(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() {
                currentItem = item;
              });
            }),
        mainScreen: MainScreen());
  }
}
