import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/info/view.dart';
import 'package:my_order/reviews/view.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class RestaurantReview extends StatelessWidget {
  const RestaurantReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          RatingBar.builder(
            glowColor: defaultColor,
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
              SizedBox(height: 10),
              TextButton(
                child: textReview(LocaleKeys.info.tr()),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => InfoPage(),
                    ),
                  );
                },
              ),
              Text(
                '|',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                child: textReview(LocaleKeys.reviews.tr()),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ReviewsPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text textReview(title) {
    return Text(
      title,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 12,
        color: defaultColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
