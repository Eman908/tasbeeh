import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeeh/core/widget/app_drawer.dart';
import 'package:tasbeeh/core/widget/drawer_style.dart';
import 'package:tasbeeh/core/widget/main_appbar.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_state.dart';
import 'package:tasbeeh/features/home/view/widget/btn.dart';
import 'package:tasbeeh/features/home/view/widget/counter_text.dart';

import '../widget/counter_decor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetTasbeehCubit, GetTasbeehState>(
      listener: (BuildContext context, state) {},
      builder: (context, state) {
        GetTasbeehCubit cubit = BlocProvider.of(context);
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: mainAppBar(),
          endDrawer: AppDrawer(),
          body: Container(
            decoration: drawerDecoration(alpha: 0.26),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  spacing: 40,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Text(
                        cubit.tasbeehDefault,
                        style: counterText(size: 50),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.counterAdd();
                      },
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        decoration: counterDecoration(color: cubit.color),
                        child: Center(
                          child: Text(
                            cubit.x.toString(),
                            style: counterText(size: 100),
                          ),
                        ),
                      ),
                    ),
                    Row(
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
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
