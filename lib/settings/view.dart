import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/settings/components/settings_scaffold.dart';
import 'package:my_order/settings/controller.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SettingsController(),
        child: SettingsScaffold()
    );
  }
}
