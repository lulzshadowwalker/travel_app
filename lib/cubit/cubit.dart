import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/cubit_state.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit() : super(InitialState()) {
    emit(WelcomeState());
  }
}
