import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/info/components/rating.dart';
import 'package:my_order/info/widget/info_row.dart';
import 'package:my_order/info/widget/right_text.dart';
import 'package:my_order/reviews/components/top_part.dart';
import 'package:my_order/reviews/controller.dart';
import 'package:my_order/reviews/widget/container_review.dart';
import 'package:my_order/reviews/widget/general_review.dart';
import 'package:my_order/reviews/widget/review_card.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class ReviewsBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var controller = ReviewsController.of(context);
    return BlocBuilder(
        bloc: controller,
        builder: (context,state)
        {
          return ListView(
            children: [
              TopPart(),
              Center(
                child: Text(
                  LocaleKeys.reviews_and_reviews.tr(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              ...controller.reviews.map((review) => ReviewCard(rating: review['rating'],name: review['name'],review: review['content'],)),
              controller.present == controller.originalReviews.length-1 ?SizedBox():TextButton(
                onPressed: controller.loadMore,
                child: Text(
                  'Read more reviews',
                  style: TextStyle(color: kPrimaryColor),
                ),
              )
            ],
          );
        }
    );
  }
}
