import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/color_app.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';

class ColorsRow extends StatelessWidget {
  const ColorsRow({
    super.key,
    required this.cubit,
  });

  final GetTasbeehCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: SizeApp.s24,
      children: [
        GestureDetector(
          onTap: () {
            cubit.colorChangeB();
          },
          child: Container(
            height: SizeApp.s50,
            width: SizeApp.s50,
            color: ColorApp.colorBlack,
          ),
        ),
        GestureDetector(
          onTap: () {
            cubit.colorChangeD();
          },
          child: Container(
            height: SizeApp.s50,
            width: SizeApp.s50,
            color: ColorApp.colorBlue,
          ),
        ),
        GestureDetector(
          onTap: () {
            cubit.colorChangeR();
          },
          child: Container(
            height: SizeApp.s50,
            width: SizeApp.s50,
            color: ColorApp.colorRed,
          ),
        )
      ],
    );
  }
}
