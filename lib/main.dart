import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_app/presentation/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyAppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class MyAppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log("Common:::$change");
    super.onChange(bloc, change);
  }
}
