part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupShowPassword extends SignupState {}

class SignupRebuild extends SignupState {}

class SingupLoading extends SignupState {}

class SignupLoaded extends SignupState {}
