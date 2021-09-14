import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/resturantDetailsPage/resturant_details_page.dart';

class ViewAllRestaurantButton extends StatelessWidget {
  const ViewAllRestaurantButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      width: MediaQuery.of(context).size.width / 1.15,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RestaurantDetailsPage(),
            ),
          );
        },
        child: Text('View all resturant'),
        style: ElevatedButton.styleFrom(
          primary: defaultColor,
        ),
      ),
    );
  }
}
