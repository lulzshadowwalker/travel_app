import 'package:equatable/equatable.dart';
import 'package:flutter_cubit/models/data.dart';

abstract class CubitState extends Equatable {
  const CubitState();
}

class InitialState extends CubitState {
  @override
  List<Object?> get props => [];
}

class WelcomeState extends CubitState {
  const WelcomeState();

  @override
  List<Object?> get props => [];
}

class LoadingState extends CubitState {
  const LoadingState();

  @override
  List<Object?> get props => [];
}

class LoadedState extends CubitState {
  const LoadedState({required this.places});
  final List<DataModel> places;
  @override
  List<Object?> get props => [places];
}

class DetailState extends CubitState {
  const DetailState({required this.place});
  final DataModel place;
  @override
  List<Object?> get props => [place];
}

