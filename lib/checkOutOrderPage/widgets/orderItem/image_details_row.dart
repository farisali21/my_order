import 'package:flutter/material.dart';

class ImageDetailsRow extends StatelessWidget {
  const ImageDetailsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage('assets/images/pizza.png'),
          fit: BoxFit.fill,
          width: 100,
          height: 80,
        ),
        SizedBox(
          width: 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                const SizedBox(width: 3),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 3),
                addOrRemoveButton('+', () {}),
              ],
            ),
          ],
        ),
      ],
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
