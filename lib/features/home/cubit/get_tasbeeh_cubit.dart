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
    emit(CounterUpdateState());
  }

  void counterReset() {
    x = 0;
    emit(CounterUpdateState());
  }

  void tasbeeh1() {
    tasbeehDefault = StringApp.text1;
    emit(TasbeehUpdateState());
  }

  void tasbeeh2() {
    tasbeehDefault = StringApp.text2;
    emit(TasbeehUpdateState());
  }

  void tasbeeh3() {
    tasbeehDefault = StringApp.text3;
    emit(TasbeehUpdateState());
  }

  void tasbeeh4() {
    tasbeehDefault = StringApp.text4;
    emit(TasbeehUpdateState());
  }

  void tasbeeh5() {
    tasbeehDefault = StringApp.text5;
    emit(TasbeehUpdateState());
  }

  void next() {
    switch (tasbeehDefault) {
      case 'سبحان الله':
        return tasbeeh2();

      case 'الحمد لله':
        return tasbeeh3();

      case 'الله اكبر':
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
    emit(ColorThemeUpdate());
  }

  void colorChangeD() {
    color = ColorApp.colorBlue;
    emit(ColorThemeUpdate());
  }

  void colorChangeR() {
    color = ColorApp.colorRed;
    emit(ColorThemeUpdate());
  }
}
