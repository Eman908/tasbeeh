import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeeh/features/home/cubit/get_tasbeeh_state.dart';

class GetTasbeehCubit extends Cubit<GetTasbeehState> {
  GetTasbeehCubit() : super(GetTasbeehInitial());

  int x = 0;
  String tasbeehDefault = 'سبحان الله';
  Color color = Color(0xff203342);

  void counterAdd() {
    x++;
    emit(CounterAddState());
  }

  void counterReset() {
    x = 0;
    emit(CounterResetState());
  }

  void tasbeeh1() {
    tasbeehDefault = 'سبحان الله';
    emit(Tasbeeh1());
  }

  void tasbeeh2() {
    tasbeehDefault = 'الحمدلله';
    emit(Tasbeeh2());
  }

  void tasbeeh3() {
    tasbeehDefault = 'الله اكبر ';
    emit(Tasbeeh3());
  }

  void tasbeeh4() {
    tasbeehDefault = 'لا اله الا الله';
    emit(Tasbeeh4());
  }

  void tasbeeh5() {
    tasbeehDefault = 'لا حول ولا قوة الا بالله';
    emit(Tasbeeh5());
  }

  void next() {
    switch (tasbeehDefault) {
      case 'سبحان الله':
        return tasbeeh2();

      case 'الحمدلله':
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
    color = Color(0xff000000);
    emit(ColorTheme1());
  }

  void colorChangeD() {
    color = Color(0xff203342);
    emit(ColorTheme2());
  }

  void colorChangeR() {
    color = Color.fromARGB(255, 255, 0, 0);
    emit(ColorTheme3());
  }
}
