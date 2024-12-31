import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/color_app.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/features/home/view/style/text_style.dart';

MaterialButton buttonMaterial(
    {required void Function()? onPressed,
    required String txtBtn,
    required icon}) {
  return MaterialButton(
    height: 60,
    color: ColorApp.colorBlue,
    onPressed: onPressed,
    child: Row(
      children: [
        Text(
          txtBtn,
          style: textStyle(size: SizeApp.s24),
        ),
        Icon(
          icon,
          color: ColorApp.colorWhite,
        ),
      ],
    ),
  );
}
