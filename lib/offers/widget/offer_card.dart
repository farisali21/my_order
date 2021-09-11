import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/offers/widget/card_details.dart';
import 'package:my_order/offers/widget/image_card.dart';

class OffersCard extends StatelessWidget {
  final image;
  final discount;
  final mealName;
  final price;
  final end;
  final onpressed;

  OffersCard({this.price,this.mealName,this.onpressed,this.image,this.end,this.discount});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      decoration: kBoxDecoration,
      child: Row(
        children: [
          ImageCard(image: image, discount: discount,),
          SizedBox(
            width: 5,
          ),
          CardDetails(mealName: mealName,price: price,end: end,onpressed: onpressed,),
        ],
      ),
    );
  }
}
