import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/settings/state.dart';
class SettingsController extends Cubit<SettingsState>
{
  SettingsController():super(SettingsInit());
  static SettingsController of(context) => BlocProvider.of(context);
  bool isSwitched = false;
  void switchOnChange(){
      isSwitched=!isSwitched;

      emit(SettingsInit());
  }

}
