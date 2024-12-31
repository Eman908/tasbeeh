import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/core/style/string_app.dart';
import 'package:tasbeeh/core/widget/colors_row.dart';
import 'package:tasbeeh/core/widget/drawer_decoration.dart';
import 'package:tasbeeh/core/widget/list_info.dart';
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
      child: Container(
        decoration: drawerDecoration(alpha: 0.1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: SizeApp.s100,
            ),
            ListInfo(
              txt: StringApp.text1,
              onTap: () {
                cubit.tasbeeh1();
              },
            ),
            SizedBox(
              height: SizeApp.s24,
            ),
            ListInfo(
              txt: StringApp.text2,
              onTap: () {
                cubit.tasbeeh2();
              },
            ),
            SizedBox(
              height: SizeApp.s24,
            ),
            ListInfo(
              txt: StringApp.text3,
              onTap: () {
                cubit.tasbeeh3();
              },
            ),
            SizedBox(
              height: SizeApp.s24,
            ),
            ListInfo(
              txt: StringApp.text4,
              onTap: () {
                cubit.tasbeeh4();
              },
            ),
            SizedBox(
              height: SizeApp.s24,
            ),
            ListInfo(
              txt: StringApp.text5,
              onTap: () {
                cubit.tasbeeh5();
              },
            ),
            SizedBox(
              height: SizeApp.s300,
            ),
            ColorsRow(cubit: cubit)
          ],
        ),
      ),
    );
  }
}
