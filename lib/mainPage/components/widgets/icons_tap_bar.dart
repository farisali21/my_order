import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/fast_delivery_page.dart';

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
            elevatedButtonMainPage('Food', () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FastDeliveryPage()));
            }, Icons.fastfood),
            elevatedButtonMainPage('Gronveries', () {}, Icons.fastfood),
            elevatedButtonMainPage('Sweets', () {}, Icons.fastfood),
            elevatedButtonMainPage('Drinks', () {}, Icons.fastfood),
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
            Icon(icon),
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
