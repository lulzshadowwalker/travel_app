import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/cubit.dart';
import 'package:flutter_cubit/cubit/cubit_state.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  _AppCubitLogicState createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubit, CubitState>(
      builder: (context, state) {
        if (state is WelcomeState)
          return WelcomePage();
        else
          return Container(color: Colors.green);
      },
    ));
  }
}
