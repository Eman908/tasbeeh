import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/color_app.dart';
import 'package:tasbeeh/core/style/size_app.dart';

Icon iconStyle({required IconData icon}) {
  return Icon(
    icon,
    color: ColorApp.colorWhite,
    size: SizeApp.s40,
  );
}
