import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/pages/fast_delivery_page.dart';

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
            SizedBox(width: 6),
            elevatedButtonMainPage('Gronveries', () {}, Icons.fastfood),
            SizedBox(width: 6),
            elevatedButtonMainPage('Sweets', () {}, Icons.fastfood),
            SizedBox(width: 6),
            elevatedButtonMainPage('Drinks', () {}, Icons.fastfood),
            SizedBox(width: 6),
          ],
        ),
      ),
    );
  }

  ElevatedButton elevatedButtonMainPage(title, onpressed(), icon) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: defaultColor,
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
    );
  }
}
