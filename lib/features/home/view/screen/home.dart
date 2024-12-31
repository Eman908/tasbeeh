import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeeh/core/style/size_app.dart';
import 'package:tasbeeh/core/widget/app_drawer.dart';
import 'package:tasbeeh/core/widget/main_appbar.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_state.dart';
import 'package:tasbeeh/features/home/view/widget/counter_container.dart';
import 'package:tasbeeh/features/home/view/widget/row_buttons.dart';
import 'package:tasbeeh/features/home/view/widget/tasbeeh_txt.dart';
import 'package:tasbeeh/features/home/view/widget/home_background.dart';

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
          endDrawer: AppDrawer(
            cubit: cubit,
          ),
          body: HomeBackground(
            cubit: cubit,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                spacing: SizeApp.s40,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TasbeehTxt(cubit: cubit),
                  CounterContainer(cubit: cubit),
                  RowButtons(cubit: cubit)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
