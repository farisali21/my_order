import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/widgets/resturant_container.dart';

class AllResturantsWidget extends StatelessWidget {
  const AllResturantsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All returants',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView(
              children: [
                ResturantContainer(),
                ResturantContainer(),
                ResturantContainer(),
                ResturantContainer(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('View all resturant'),
              style: ElevatedButton.styleFrom(
                primary: defaultColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
