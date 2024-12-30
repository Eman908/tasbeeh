import 'package:flutter/material.dart';
import 'package:tasbeeh/core/widget/drawer_decoration.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({
    super.key,
    required this.cubit,
    required this.child,
  });

  final GetTasbeehCubit cubit;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: drawerDecoration(alpha: 0.26),
        child: child);
  }
}
