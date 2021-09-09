import 'package:flutter/material.dart';

import 'package:my_order/mainPage/components/widgets/specialOffer/special_offer_images.dart';

class SpicalOffer extends StatelessWidget {
  const SpicalOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'Spical offer',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        SpicalOfferImages()
      ],
    );
  }
}
