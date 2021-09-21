import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/checkOutSecondPage/widgets/expire_date.dart';
import 'package:my_order/checkOutSecondPage/widgets/textFormField_visa_widget.dart';
import 'package:my_order/translations/locale_keys.g.dart';

import 'cvv_widget.dart';

class VisaWidget extends StatelessWidget {
  const VisaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textFormFieldVisaWidget(
            TextInputType.number, LocaleKeys.card_number.tr(), SizedBox()),
        textFormFieldVisaWidget(
            TextInputType.number, LocaleKeys.card_holder_name.tr(), SizedBox()),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ExpireDate(),
            CvvWidget(),
          ],
        )
      ],
    );
  }
}
