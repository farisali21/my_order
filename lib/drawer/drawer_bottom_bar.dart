import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class DrawerBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35,),
        Text(
          LocaleKeys.drawer_contact_us.tr(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.instagram,
              color: Colors.white,

            ),
            Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,

            ),

          ],
        ),
        SizedBox(height: 50,)
      ],
    );
  }
}
