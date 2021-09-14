import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/settings/state.dart';
import 'package:easy_localization/easy_localization.dart';
import '../controller.dart';

class LanguageDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = SettingsController.of(context);

    return BlocBuilder<SettingsController,SettingsState>(
        bloc: controller,
        builder: (context,state)
        {
          return DropdownButton<String>(
            dropdownColor: Colors.white,
            value: controller.languageDropdownValue,
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(FontAwesomeIcons.pen, color: Colors.black),
            ),
            iconSize: 16,
            elevation: 16,
            style: const TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
            underline: Container(
              height: 0,
              color: Colors.white,
            ),
            onChanged:(String? text) async {
              controller.languageOnChangedDropDown(text);
              if(text=='Arabic')
                context.setLocale(Locale('ar'));
              else
                context.setLocale(Locale('en'));
            } ,
            items: <String>['English', 'Arabic']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          );
        }
    );
  }
}
