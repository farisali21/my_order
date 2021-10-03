part of 'additem_cubit.dart';

@immutable
abstract class AdditemState {}

class AdditemInitial extends AdditemState {}

class AdditemRebuild extends AdditemState {}

class AdditemLoading extends AdditemState {}

class AdditemLoaded extends AdditemState {}

class AdditemError extends AdditemState {}
