import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'resetpassword_state.dart';

class ResetpasswordCubit extends Cubit<ResetpasswordState> {
  ResetpasswordCubit() : super(ResetpasswordInitial());
  static ResetpasswordCubit of(context) => BlocProvider.of(context);

  bool passwordVisible = true;

  void changePasswordState() {
    passwordVisible = !passwordVisible;
    emit(ResetpasswordRebuild());
  }
}
