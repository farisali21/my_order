part of 'loginform_cubit.dart';

@immutable
abstract class LoginformState {}

class LoginformInitial extends LoginformState {}

class LoginFormShowPassword extends LoginformState {}

class LoginFormRebuild extends LoginformState {}

class LoginFormLoading extends LoginformState {}

class LoginFormLoaded extends LoginformState {}
