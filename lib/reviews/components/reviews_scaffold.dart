import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/drawerAppbar/drawerAppBar.dart';
import 'package:my_order/reviews/components/reviews_body.dart';
import 'package:my_order/reviews/controller.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class ReviewsScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> ReviewsController(),
      child: Scaffold(
        appBar: drawerAppBar(IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,size: 28,)), LocaleKeys.info_reviews.tr()),
        body: ReviewsBody(),
      ),
    );
  }
}