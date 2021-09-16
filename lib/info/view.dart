import 'package:flutter/material.dart';
import 'package:my_order/drawerAppbar/drawerAppBar.dart';
import 'package:my_order/info/components/info_body.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerAppBar(
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 28,
            ),
          ),
          LocaleKeys.info.tr()),
      body: InfoBody(),
    );
  }
}
