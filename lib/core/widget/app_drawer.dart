import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/string_app.dart';
import 'package:tasbeeh/core/widget/colors_row.dart';
import 'package:tasbeeh/core/widget/drawer_decoration.dart';
import 'package:tasbeeh/core/widget/drawer_text.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    required this.cubit,
    super.key,
  });
  final GetTasbeehCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 48, bottom: 32, right: 16),
              decoration: drawerDecoration(alpha: 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 24,
                children: [
                  TextButton(
                    onPressed: () {
                      cubit.tasbeeh1();
                      Navigator.pop(context);
                    },
                    child: Text(
                      StringApp.text1,
                      style: drawerTextStyle(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      cubit.tasbeeh2();
                      Navigator.pop(context);
                    },
                    child: Text(
                      StringApp.text2,
                      style: drawerTextStyle(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      cubit.tasbeeh3();
                      Navigator.pop(context);
                    },
                    child: Text(
                      StringApp.text3,
                      style: drawerTextStyle(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      cubit.tasbeeh4();
                      Navigator.pop(context);
                    },
                    child: Text(
                      StringApp.text4,
                      style: drawerTextStyle(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      cubit.tasbeeh5();
                      Navigator.pop(context);
                    },
                    child: Text(
                      StringApp.text5,
                      style: drawerTextStyle(),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  ColorsRow(cubit: cubit)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
