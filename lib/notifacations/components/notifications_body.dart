import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/notifacations/components/notification_card.dart';

class NotificationsBody extends StatelessWidget {
  List<Map<String,dynamic>> notifications = [
    {
      'title' : 'Don\'t forget your voucher ',
      'content':'place your 1st order using the code USDFADASD for EGP 50 discount on your first order',
    },
    {
      'title' : 'Don\'t forget your voucher ',
      'content':'place your 1st order using the code USDFADASD for EGP 50 discount on your first order',
    },
    {
      'title' : 'Don\'t forget your voucher ',
      'content':'place your 1st order using the code USDFADASD for EGP 50 discount on your first order',
    },
    {
      'title' : 'Don\'t forget your voucher ',
      'content':'place your 1st order using the code USDFADASD for EGP 50 discount on your first order',
    },
    {
      'title' : 'Don\'t forget your voucher ',
      'content':'place your 1st order using the code USDFADASD for EGP 50 discount on your first order',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...notifications.map((notification) => NotificationsCard(title: notification['title'],content: notification['content'],))
      ],
    );
  }
}
