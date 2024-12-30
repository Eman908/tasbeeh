import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/features/home/view/widget/text_style.dart';

MaterialButton buttonMaterial(
    {required void Function()? onPressed,
    required String txtBtn,
    required icon}) {
  return MaterialButton(
    height: 60,
    color: Color(0xff203342),
    onPressed: onPressed,
    child: Row(
      children: [
        Text(
          txtBtn,
          style: textStyle(size: SizeApp.s24),
        ),
        Icon(
          icon,
          color: Colors.white,
        ),
      ],
    ),
  );
}
