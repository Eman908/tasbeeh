import 'package:flutter/material.dart';

BoxDecoration counterDecoration({required Color color}) {
  return BoxDecoration(
    border: Border.all(color: Color(0xffee7434), width: 4),
    color: color.withValues(alpha: 0.7),
    borderRadius: BorderRadius.circular(400),
  );
}
// Color(0xff203342)
