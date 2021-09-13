import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'additem_state.dart';

class AdditemCubit extends Cubit<AdditemState> {
  AdditemCubit() : super(AdditemInitial());
  static AdditemCubit of(context) => BlocProvider.of(context);
  int counter = 1;
  int currentIndexOfChosseSize = -1;
  int currentIndexOfChosseExtras = -1;
  bool colorBoolOfChosseExtra = false;

  void addItem() {
    counter++;
    emit(AdditemRebuild());
  }

  void removeItem() {
    if (counter <= 1) {
      return;
    }
    counter--;
    emit(AdditemRebuild());
  }

  void changeColorOfChosseExtra() {
    colorBoolOfChosseExtra = !colorBoolOfChosseExtra;
    emit(AdditemRebuild());
  }

  void setIndexOfChosseSize(int index) {
    currentIndexOfChosseSize = index;
    emit(AdditemRebuild());
  }

  void setIndexOfChosseExtras(int index) {
    currentIndexOfChosseExtras = index;
    emit(AdditemRebuild());
  }
}
