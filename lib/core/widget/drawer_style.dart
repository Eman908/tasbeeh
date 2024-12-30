import 'package:flutter/material.dart';

BoxDecoration drawerDecoration({required double alpha}) {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/im.jpg'),
      colorFilter: ColorFilter.mode(
          Colors.black.withValues(alpha: alpha), BlendMode.colorBurn),
      fit: BoxFit.cover,
    ),
  );
}
