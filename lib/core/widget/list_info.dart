import 'package:flutter/material.dart';
import 'package:tasbeeh/core/widget/drawer_text.dart';

class ListInfo extends StatelessWidget {
  const ListInfo({
    required this.onTap,
    required this.txt,
    super.key,
  });
  final String txt;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(
        txt,
        style: drawerTextStyle(),
      ),
      onTap: onTap,
    );
  }
}
