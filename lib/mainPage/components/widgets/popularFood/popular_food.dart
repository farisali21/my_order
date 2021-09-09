import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/widgets/popularFood/popular_food_images.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular food',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  'view more',
                  style: TextStyle(color: Colors.black),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(width: 1.0, color: Colors.pink)),
              ),
            ],
          ),
        ),
        PopularFoodImages(),
      ],
    );
  }
}
