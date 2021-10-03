import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/widgets/fastDeliveryWidget/restaurant_review.dart';

class SpecialOfferItem extends StatelessWidget {
  final imageUrl;
  final title;
  final deliveryPrice;
  final foodType;
  const SpecialOfferItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.deliveryPrice,
    required this.foodType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            width: MediaQuery.of(context).size.width * .7,
            height: MediaQuery.of(context).size.height / 6,
            child: Image(
              image: AssetImage(imageUrl),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                Text(
                  foodType,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                ),
                Text(
                  deliveryPrice,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          RestaurantReview(),
        ],
      ),
    );
  }
}
