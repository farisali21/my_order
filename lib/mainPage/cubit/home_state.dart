part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeRebuild extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {}
