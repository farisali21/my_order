import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/searchPage/search_page.dart';

import 'cuisinesFilters/components/cuisines_filters.dart';
import 'cuisinesFilters/cuisines_filters_page.dart';
import 'splashScreen/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en'),
      child: MyApp()));
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
