import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/fast_delivery_page.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class IconsTapBar extends StatelessWidget {
  const IconsTapBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            elevatedButtonMainPage(LocaleKeys.food_button.tr(), () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FastDeliveryPage()));
            }, Icon(Icons.fastfood)),
            elevatedButtonMainPage(LocaleKeys.gronveries_button.tr(), () {},
                Icon(Icons.local_grocery_store)),
            elevatedButtonMainPage(
                LocaleKeys.sweets_button.tr(), () {}, Icon(Icons.cake_sharp)),
            elevatedButtonMainPage(LocaleKeys.drinks_button.tr(), () {},
                FaIcon(FontAwesomeIcons.glassCheers)),
          ],
        ),
      ),
    );
  }

  Widget elevatedButtonMainPage(title, onpressed(), icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.all(6),
        ),
        onPressed: onpressed,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 2,
            ),
            Text(
              title,
            ),
          ],
        ),
      ),
    );
  }
}
