import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order/constants/constants.dart';

class RestaurantReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingBar.builder(
          itemSize: 12,
          initialRating: 5,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: defaultColor,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Row(
          children: [
            Icon(
              Icons.timer,
              size: 10.0,
            ),
            Text(
              'within 24 mins',
              style: TextStyle(
                fontSize: 10.0,
              ),
            )
          ],
        ),
      ],
    );
  }
}
