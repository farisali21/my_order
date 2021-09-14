import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/settings/components/settings_scaffold.dart';
import 'package:my_order/settings/controller.dart';
import 'package:easy_localization/easy_localization.dart';
class SettingsPage extends StatelessWidget {
  late final language ;
  @override
  Widget build(BuildContext context) {
    language = context.locale.toString() =='en'?'English':'Arabic';
    return BlocProvider(
        create: (context) => SettingsController()..languageDropdownValue= language,
        child: SettingsScaffold()
    );
  }
}
