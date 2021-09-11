import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  const MealImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image(
        image: AssetImage('assets/images/offer.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}
