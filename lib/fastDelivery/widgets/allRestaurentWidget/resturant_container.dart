import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order/fastDelivery/widgets/allRestaurentWidget/resturant_review_and_delivery_time.dart';

import 'resturant_name_state.dart';

class ResturantContainer extends StatelessWidget {
  const ResturantContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('assets/images/pizza.png'),
                    fit: BoxFit.fill,
                    width: 110,
                    height: 80,
                  ),
                ),
                const SizedBox(width: 3),
                ResturantNameAndTheStateOfResturant(),
              ],
            ),
            ResturantReviewsAndDeliveryTime()
          ],
        ),
      ),
    );
  }
}
