import 'package:flutter/material.dart';
import 'package:my_order/info/components/rating.dart';
import 'package:my_order/info/widget/right_text.dart';
import 'package:my_order/reviews/widget/container_review.dart';
import 'package:my_order/reviews/widget/general_review.dart';
class TopPart extends StatelessWidget {
  const TopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerReview(
          leftWidget: Rating(
            numberOfStars: 4.0,
          ),
          rightWidget: RightText(
            text: '2100 ratings',
          ),
        ),
        GeneralReview(
          text: 'Order packaging',
          rating: 4.0,
        ),
        GeneralReview(
          text: 'Value for money',
          rating: 4.0,
        ),
        GeneralReview(
          text: 'Delivery time',
          rating: 4.0,
        ),
        GeneralReview(
          text: 'Quality of food',
          rating: 4.0,
        ),
      ],
    );
  }
}
