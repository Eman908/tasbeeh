import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';
import 'package:tasbeeh/features/home/view/widget/text_style.dart';

class TasbeehTxt extends StatelessWidget {
  const TasbeehTxt({
    super.key,
    required this.cubit,
  });

  final GetTasbeehCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Text(
        cubit.tasbeehDefault,
        style: textStyle(size: SizeApp.s50),
        textAlign: TextAlign.center,
      ),
    );
  }
}
