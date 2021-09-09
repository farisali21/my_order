import 'package:flutter/material.dart';

import 'popular_brands_item.dart';

class PopularBrandImages extends StatelessWidget {
  const PopularBrandImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PopularBrandsItem('assets/images/gad.jpg', 'Gad'),
            PopularBrandsItem('assets/images/heart_attack.png', 'Heart Attck'),
            PopularBrandsItem('assets/images/gad.jpg', 'Gad'),
          ],
        ),
      ),
    );
  }
}
