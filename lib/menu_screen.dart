import 'package:flutter/material.dart';

import 'menuitem.dart';

class MenuItems {
  static const home = MenuItem("Accueil", Icons.home);
  static const notif = MenuItem("Notifications", Icons.notifications);
  static const help = MenuItem("Help", Icons.help);
  static const about = MenuItem("A propos", Icons.info);
  static const tutorial = MenuItem("Tutorial", Icons.bookmark);
  static const rate = MenuItem("Rate Us", Icons.star_border_outlined);

  static const all = <MenuItem>[home, notif, help, about, tutorial, rate];
}

class Menu extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const Menu({Key key, this.currentItem, this.onSelectedItem})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTile(
        selectedTileColor: Colors.green[300],
        selected: currentItem == item,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () {},
      );
}
