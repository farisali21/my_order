import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/widgets/icons_tap_bar.dart';
import 'package:my_order/mainPage/components/widgets/discounts_image.dart';
import 'package:my_order/mainPage/components/widgets/popularBrands/popular_brands_near_you.dart';
import 'package:my_order/mainPage/components/widgets/popularFood/popular_food.dart';
import 'package:my_order/mainPage/components/widgets/specialOffer/special_offers.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  _MainPageBodyState createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconsTapBar(),
          DiscountWidget(),
          PopularFood(),
          PopularBrands(),
          SpicalOffer(),
          DiscountWidget(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
