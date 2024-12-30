import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';
import 'package:tasbeeh/features/home/view/widget/counter_decor.dart';
import 'package:tasbeeh/features/home/view/widget/text_style.dart';

class CounterContainer extends StatelessWidget {
  const CounterContainer({
    super.key,
    required this.cubit,
  });

  final GetTasbeehCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cubit.counterAdd();
      },
      child: Container(
        height: 380,
        width: 380,
        decoration: counterDecoration(color: cubit.color),
        child: Center(
          child: Text(
            cubit.x.toString(),
            style: textStyle(size: SizeApp.s100),
          ),
        ),
      ),
    );
  }
}
