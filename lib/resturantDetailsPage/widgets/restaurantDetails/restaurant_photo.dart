import 'package:flutter/material.dart';

class RestaurantPhoto extends StatelessWidget {
  const RestaurantPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image(
        width: double.infinity,
        height: 150,
        image: AssetImage('assets/images/offer.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}
