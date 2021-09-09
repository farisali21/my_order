import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
            Image(
              image: AssetImage('assets/images/pizza.png'),
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 9,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gedoo',
                  style: TextStyle(),
                ),
                SizedBox(height: 10),
                Text(
                  'Sandwitch, Males',
                  style: TextStyle(),
                ),
                SizedBox(height: 10),
                Text(
                  'online',
                  style: TextStyle(),
                ),
              ],
            ),
            Column(
              children: [
                RatingBar.builder(
                  itemSize: 10.0,
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
                  height: 5,
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
            )
          ],
        ),
      ),
    );
  }
}
