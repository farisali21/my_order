import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order/constants/constants.dart';

class Rating extends StatelessWidget {
  final numberOfStars;
  Rating({this.numberOfStars});
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: numberOfStars,
      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: kPrimaryColor,
      ),
      itemCount: 5,
      itemSize: 28.0,
      direction: Axis.horizontal,
    );
  }
}
