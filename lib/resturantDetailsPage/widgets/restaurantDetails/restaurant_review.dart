import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/info/view.dart';
import 'package:my_order/reviews/view.dart';

class RestaurantReview extends StatelessWidget {
  const RestaurantReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingBar.builder(
          glowColor: defaultColor,
          itemSize: 15,
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Row(
          children: [
            SizedBox(height: 10),
            TextButton(
              child: textReview('Info'),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => InfoPage(),),);
              },
            ),
            Text(
              ' | ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextButton(
              child: textReview('Reviews'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ReviewsPage(),),);
              },
            ),

          ],
        ),
      ],
    );
  }

  Text textReview(title) {
    return Text(
      title,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 15,
        color: defaultColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
