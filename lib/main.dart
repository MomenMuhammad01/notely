import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notely/app.dart';
import 'package:notely/core/shared/bloc_observer.dart';
import 'package:notely/core/shared/service_locator.dart';

void main() async {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
  await ServiceLocator().init();
}