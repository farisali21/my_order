import 'package:flutter/material.dart';
import 'package:my_order/addOrderToCart/order_page.dart';

class MealsList extends StatelessWidget {
  const MealsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AddOrderPage()));
      },
      child: Padding(
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
                    'Koshary',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pasta, liver',
                    style: TextStyle(),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Text(
                'Price: EGP 15',
                style: TextStyle(),
              ),
              SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
