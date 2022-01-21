import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/cubit_state.dart';
import 'package:flutter_cubit/models/data.dart';
import 'package:flutter_cubit/services/data_service.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit() : super(InitialState()) {
    emit(const WelcomeState());
  }

  final DataService data = DataService();
  late final places; // *  you don't have to load it twice

  void getData() async {
    try {
      emit(const LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places: places));
    } catch (e) {
      print('getData error: $e');
    }
  }

  void getDetails(DataModel place) {
    try {
      emit(DetailState(place: place));
    } catch (e) {
      print('getDetails: $e');
    }
  }

  void goHome() {
    emit(LoadedState(places: places));
  }
}
