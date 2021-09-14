import 'package:flutter/material.dart';
import 'package:my_order/info/components/rating.dart';
import 'package:my_order/reviews/widget/container_review.dart';

class GeneralReview extends StatelessWidget {
  final text;
  final rating;
  GeneralReview({this.text,this.rating});
  @override
  Widget build(BuildContext context) {
    return ContainerReview(
      leftWidget: Flexible(child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)),
      rightWidget: Row(
        children: [
          Rating(numberOfStars: rating,),
          Text('$rating',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)
        ],
      ),
    );
  }
}
