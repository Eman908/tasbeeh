import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeeh/core/style/color_app.dart';
import 'package:tasbeeh/core/style/string_app.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_state.dart';

class GetTasbeehCubit extends Cubit<GetTasbeehState> {
  GetTasbeehCubit() : super(GetTasbeehInitial());

  int x = 0;
  String tasbeehDefault = StringApp.text1;
  Color color = ColorApp.colorBlue;

  void counterAdd() {
    x++;
    emit(CounterAddState());
  }

  void counterReset() {
    x = 0;
    emit(CounterResetState());
  }

  void tasbeeh1() {
    tasbeehDefault = StringApp.text1;
    emit(Tasbeeh1());
  }

  void tasbeeh2() {
    tasbeehDefault = StringApp.text2;
    emit(Tasbeeh2());
  }

  void tasbeeh3() {
    tasbeehDefault = StringApp.text3;
    emit(Tasbeeh3());
  }

  void tasbeeh4() {
    tasbeehDefault = StringApp.text4;
    emit(Tasbeeh4());
  }

  void tasbeeh5() {
    tasbeehDefault = StringApp.text5;
    emit(Tasbeeh5());
  }

  void next() {
    switch (tasbeehDefault) {
      case 'سبحان الله':
        return tasbeeh2();

      case 'الحمد لله':
        return tasbeeh3();

      case 'الله اكبر ':
        return tasbeeh4();

      case 'لا اله الا الله':
        return tasbeeh5();

      case 'لا حول ولا قوة الا بالله':
        return tasbeeh1();
    }
    emit(NextTasbeeh());
  }

  void colorChangeB() {
    color = ColorApp.colorBlack;
    emit(ColorTheme1());
  }

  void colorChangeD() {
    color = ColorApp.colorBlue;
    emit(ColorTheme2());
  }

  void colorChangeR() {
    color = ColorApp.colorRed;
    emit(ColorTheme3());
  }
}
