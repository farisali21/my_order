import 'package:flutter/material.dart';
import 'package:my_order/info/components/rating.dart';

class ReviewCard extends StatelessWidget {
  final name;
  final rating;
  final review;
  ReviewCard({this.rating,this.name,this.review});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
              Rating(numberOfStars: rating,),
            ],
          ),
          SizedBox(height: 15,),
          Text(review,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),)
        ],
      ),
    );
  }
}
