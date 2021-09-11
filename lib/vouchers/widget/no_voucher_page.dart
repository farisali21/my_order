import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoVoucherPage extends StatelessWidget {
  const NoVoucherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        Icon(FontAwesomeIcons.tag,size: 30,),
        SizedBox(height: 15,),
        Text('No voucher available',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
        SizedBox(height: 10,),
        Text('you can your voucher by redeeming your points',style: TextStyle(color: Colors.grey,fontSize: 18),textAlign: TextAlign.center,),
      ],
    );
  }
}
