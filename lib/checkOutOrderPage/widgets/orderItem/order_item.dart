import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key}) : super(key: key);

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
                  'Super Koshary',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Pasta',
                  style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    addOrRemoveButton('-', () {}),
                    SizedBox(width: 8),
                    Text(
                      '1',
                      // controller.counter.toString(),
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 8),
                    addOrRemoveButton('+', () {}),
                  ],
                ),
              ],
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'X',
                  style: TextStyle(
                    color: defaultColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Price: EGP 15',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }

  Widget addOrRemoveButton(title, void onpressed()) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[300],
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }
}
