import 'package:flutter/material.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';
import 'package:tasbeeh/features/home/view/widget/material_button.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    super.key,
    required this.cubit,
  });

  final GetTasbeehCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buttonMaterial(
            onPressed: () {
              cubit.counterReset();
            },
            txtBtn: '',
            icon: Icons.replay),
        buttonMaterial(
            onPressed: () {
              cubit.next();
            },
            txtBtn: 'التالي',
            icon: Icons.arrow_forward),
      ],
    );
  }
}
