import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/color_app.dart';

BoxDecoration drawerDecoration({required double alpha}) {
  return BoxDecoration(
    image: DecorationImage(
      image: const AssetImage('assets/im.jpg'),
      colorFilter: ColorFilter.mode(
          ColorApp.colorBlack.withValues(alpha: alpha), BlendMode.colorBurn),
      fit: BoxFit.cover,
    ),
  );
}
