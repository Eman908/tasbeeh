import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/color_app.dart';

BoxDecoration counterDecoration({required Color color}) {
  return BoxDecoration(
      border: Border.all(color: ColorApp.colorOrange, width: 4),
      color: color.withValues(alpha: 0.7),
      shape: BoxShape.circle);
}
