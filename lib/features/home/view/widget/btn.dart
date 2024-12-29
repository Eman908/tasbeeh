import 'package:flutter/material.dart';
import 'package:tasbeeh/features/home/view/widget/button%20_txt.dart';

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
          style: btnTxt(),
        ),
        Icon(
          icon,
          color: Colors.white,
        ),
      ],
    ),
  );
}
