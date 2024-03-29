import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/cubit.dart';
import 'package:flutter_cubit/cubit/cubit_logic.dart';
import 'package:flutter_cubit/pages/details_page.dart';
import 'package:flutter_cubit/pages/nav_pages/main_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubit>(
          create: (context) => AppCubit(), child: const AppCubitLogic()),
    );
  }
}
