import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'finishorder_state.dart';

class FinishorderCubit extends Cubit<FinishorderState> {
  FinishorderCubit() : super(FinishorderInitial());
}
