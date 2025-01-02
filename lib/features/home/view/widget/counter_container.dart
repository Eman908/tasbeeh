import 'package:flutter/material.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';
import 'package:tasbeeh/features/home/view/widget/counter_decor.dart';
import 'package:tasbeeh/features/home/view/style/text_style.dart';

class CounterContainer extends StatelessWidget {
  const CounterContainer({
    super.key,
    required this.cubit,
  });

  final GetTasbeehCubit cubit;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerSize = screenWidth * 0.8;
    return GestureDetector(
      onTap: () {
        cubit.counterAdd();
      },
      child: Container(
        height: containerSize,
        width: containerSize,
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
