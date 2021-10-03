part of 'resteurant_cubit.dart';

@immutable
abstract class ResteurantState {}

class ResteurantInitial extends ResteurantState {}

class ResteurantLoading extends ResteurantState {}

class ResteurantLoaded extends ResteurantState {}
