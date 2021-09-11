import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_order/constants/constants.dart';

part 'additem_state.dart';

class AdditemCubit extends Cubit<AdditemState> {
  AdditemCubit() : super(AdditemInitial());
  static AdditemCubit of(context) => BlocProvider.of(context);
  int counter = 1;
  bool colorBoolOfChosseSize = false;
  bool colorBoolOfChosseExtra = false;

  void addItem() {
    counter++;
    emit(AdditemRebuild());
  }

  void removeItem() {
    counter--;
    emit(AdditemRebuild());
  }

  void changeColorOfChosseSize() {
    colorBoolOfChosseSize = !colorBoolOfChosseSize;
    emit(AdditemRebuild());
  }

  void changeColorOfChosseExtra() {
    colorBoolOfChosseExtra = !colorBoolOfChosseExtra;
    emit(AdditemRebuild());
  }
}
