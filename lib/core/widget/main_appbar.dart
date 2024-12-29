import 'package:flutter/material.dart';
import 'package:tasbeeh/core/widget/app_icon.dart';

AppBar mainAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    actions: [
      Builder(
        builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: iconStyle(icon: Icons.menu));
        },
      ),
    ],
  );
}
