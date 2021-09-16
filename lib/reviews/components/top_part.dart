import 'package:flutter/material.dart';
import 'package:my_order/info/components/rating.dart';
import 'package:my_order/info/widget/right_text.dart';
import 'package:my_order/reviews/widget/container_review.dart';
import 'package:my_order/reviews/widget/general_review.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
            text: '2100 ${LocaleKeys.info_reviews.tr()}',
          ),
        ),
        GeneralReview(
          text: LocaleKeys.reviews_order_packaging.tr(),
          rating: 4.0,
        ),
        GeneralReview(
          text: LocaleKeys.reviews_value_for_money.tr(),
          rating: 4.0,
        ),
        GeneralReview(
          text: LocaleKeys.reviews_delivery_time.tr(),
          rating: 4.0,
        ),
        GeneralReview(
          text: LocaleKeys.reviews_quality.tr(),
          rating: 4.0,
        ),
      ],
    );
  }
}
