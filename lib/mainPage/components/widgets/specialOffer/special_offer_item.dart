import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 6,
            child: Image(
              image: AssetImage(imageUrl),
              fit: BoxFit.fill,
            ),
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                itemSize: 15,
                initialRating: 3,
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
              SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.timer,
                    size: 10.0,
                  ),
                  Text(
                    'within 24 mins',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
