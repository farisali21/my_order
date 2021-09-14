import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/settings/state.dart';
class SettingsController extends Cubit<SettingsState>
{
  SettingsController():super(SettingsInit());
  static SettingsController of(context) => BlocProvider.of(context);
  bool isSwitched = false;
  String languageDropdownValue = 'English';
  String countryDropdownValue = 'Egypt';
  void languageOnChangedDropDown  (String? newValue) {
    languageDropdownValue = newValue!;
    emit(SettingsRebuild());
  }
  void countryOnChangedDropDown  (String? newValue) {
    countryDropdownValue = newValue!;
    emit(SettingsRebuild());
  }
  void switchOnChange(bool truth){
      isSwitched=!isSwitched;
      emit(SettingsInit());
  }

}
