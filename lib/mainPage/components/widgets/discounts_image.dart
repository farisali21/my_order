import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/mainPage/cubit/home_cubit.dart';

class DiscountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubitController = HomeCubit.of(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                child: PageView(
                  controller: cubitController.pageControllerFirstOffer,
                  onPageChanged: (int value) {
                    cubitController.updateCurrentPositionFirstOffer(value);
                    cubitController.pageControllerFirstOffer.animateToPage(
                        value,
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
                    dotsCount: 2,
                    position:
                        cubitController.currentPositionfirstOffer.toDouble(),
                    decorator: DotsDecorator(
                      activeColor: defaultColor,
                      activeSize: const Size(12.0, 12.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
