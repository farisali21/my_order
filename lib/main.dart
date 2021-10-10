import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_order/forgottenPassword/forgotten_password_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'loginFormPage/login_form_page.dart';
import 'loginPage/login_page.dart';
import 'splashScreen/splashView.dart';

// part 'main.g.dart';
const userDetails = 'userDetails';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<String>(userDetails);
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreen(),
    );
  }
}
