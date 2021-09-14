import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class ExpansionItem extends StatelessWidget {
  final title;
  final content;

  ExpansionItem({this.content, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: kPrimaryColor, width: 1))),
      child: ExpansionTile(
        textColor: Colors.black,
        iconColor: Colors.black,
        title: Text(title),
        children: <Widget>[
          ListTile(
            title: Text(content),
          ),
        ],
      ),
    );
  }
}
