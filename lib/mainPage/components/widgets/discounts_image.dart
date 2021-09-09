import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/widgets/dots_indicator.dart';

class DiscountWidget extends StatelessWidget {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
            child: PageView(
              controller: controller,
              onPageChanged: (int value) {
                controller.animateToPage(value,
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeInOut);
              },
              children: [
                MyPage1Widget(),
                MyPage2Widget(),
              ],
            ),
          ),
          Container(
            child: Center(
              child: DotsIndicator(
                color: Colors.pink,
                controller: controller,
                itemCount: 2,
                onPageSelected: (int page) {
                  controller.animateToPage(
                    page,
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('assets/images/offer.png'));
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('assets/images/offer.png'));
  }
}
