import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'loginform_state.dart';

class LoginformCubit extends Cubit<LoginformState> {
  LoginformCubit() : super(LoginformInitial());
  static LoginformCubit of(context) => BlocProvider.of(context);

  bool passwordVisible = true;
  bool valuefirst = false;
  void changePasswordState() {
    passwordVisible = !passwordVisible;
    emit(LoginFormRebuild());
  }

  void changeCheckBoxState(value) {
    valuefirst = value;
    emit(LoginFormRebuild());
  }
}
