import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbeeh/core/bloc/bloc_observer.dart';
import 'package:tasbeeh/run_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(Tasbeeh());
}
