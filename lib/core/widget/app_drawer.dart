import 'package:flutter/material.dart';
import 'package:tasbeeh/core/widget/drawer_style.dart';
import 'package:tasbeeh/core/widget/list_info.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_cubit.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTasbeehCubit, GetTasbeehState>(
      builder: (context, state) {
        GetTasbeehCubit cubit = BlocProvider.of(context);
        return Drawer(
          child: Container(
            decoration: drawerDecoration(alpha: 0.1),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 100,
                ),
                ListInfo(
                  txt: 'سبحان الله',
                  onTap: () {
                    cubit.tasbeeh1();
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                ListInfo(
                  txt: 'الحمد لله',
                  onTap: () {
                    cubit.tasbeeh2();
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                ListInfo(
                  txt: 'الله اكبر',
                  onTap: () {
                    cubit.tasbeeh3();
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                ListInfo(
                  txt: 'لا اله الا الله',
                  onTap: () {
                    cubit.tasbeeh4();
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                ListInfo(
                  txt: 'لا حول ولا قوة الا بالله',
                  onTap: () {
                    cubit.tasbeeh5();
                  },
                ),
                SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 24,
                  children: [
                    GestureDetector(
                      onTap: () {
                        cubit.colorChangeB();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.colorChangeD();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Color(0xff203342),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.colorChangeR();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
