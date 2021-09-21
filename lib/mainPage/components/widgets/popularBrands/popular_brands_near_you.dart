import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/widgets/popularBrands/popular_brands_image.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class PopularBrands extends StatelessWidget {
  const PopularBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  LocaleKeys.popular_brands_near_u.tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.view_more.tr(),
                  style: TextStyle(color: Colors.black),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(width: 1.0, color: Colors.pink)),
              ),
            ],
          ),
        ),
        PopularBrandImages(),
      ],
    );
  }
}
