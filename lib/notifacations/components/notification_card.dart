import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';


class NotificationsCard extends StatelessWidget {
  final title;
  final content;
  NotificationsCard({this.title,this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: kPrimaryColor)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.notifications_active,
            size: 35,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  content,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
