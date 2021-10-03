import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order/help/view.dart';
import 'package:my_order/notifacations/view.dart';
import 'package:my_order/offers/view.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:my_order/vouchers/components/vouchers_body.dart';
import 'package:my_order/vouchers/view.dart';
import 'controller.dart';
import 'drawer_bottom_bar.dart';
import 'drawer_single_item.dart';
import 'MainDrawerHeader.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/userDetailsPage/user_details_page.dart';
import 'package:my_order/yourOrders/view.dart';
import '../../../chooseLocation/view.dart';
import 'package:easy_localization/easy_localization.dart';

class DrawerItems extends StatelessWidget {
  List<dynamic> pages = [
    MainPage(),
    UserDetails(),
    ChooseLocation(),
    YourOrders(),
    OffersPage(),
    NotificationsPage(),
    MainPage(),
    VouchersPage(),
    HelpPage(),
    MainPage(),
    MainPage()
  ];

  List<Map<String, dynamic>> drawerItemsDetails = [
    {'icon': Icons.home, 'text': LocaleKeys.drawer_home.tr()},
    {
      'icon': Icons.person,
      'text': LocaleKeys.drawer_profile.tr(),
    },
    {
      'icon': Icons.location_on,
      'text': LocaleKeys.drawer_location.tr(),
      'ontap': () {}
    },
    {
      'icon': Icons.list_alt,
      'text': LocaleKeys.drawer_your_orders.tr(),
      'ontap': () {}
    },
    {
      'icon': Icons.local_offer,
      'text': LocaleKeys.drawer_offers.tr(),
      'ontap': () {}
    },
    {
      'icon': Icons.notifications,
      'text': LocaleKeys.drawer_notifications.tr(),
      'ontap': () {}
    },
    {
      'icon': Icons.credit_card,
      'text': LocaleKeys.drawer_payment.tr(),
      'ontap': () {}
    },
    {
      'icon': Icons.airplane_ticket,
      'text': LocaleKeys.drawer_vouchers.tr(),
      'ontap': () {}
    },
    {'icon': Icons.help, 'text': LocaleKeys.drawer_help.tr(), 'ontap': () {}},
    {
      'icon': Icons.assignment_turned_in_rounded,
      'text': LocaleKeys.drawer_about_us.tr(),
      'ontap': () {},
    },
    {
      'icon': Icons.logout,
      'text': LocaleKeys.drawer_log_out.tr(),
      'ontap': () {}
    }
  ];
  @override
  Widget build(BuildContext context) {
    var controller = MainDrawerController.of(context);
    return ListView(
      // padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent, width: 0)),
          child: MainDrawerHeader(),
        ),
        ...List.generate(drawerItemsDetails.length, (index) {
          var selected = drawerItemsDetails[index];
          return DrawerSingleItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]),
              );
            },
            text: selected['text'],
            icon: selected['icon'],
            index: index,
          );
        }),
        DrawerBottomBar(),
      ],
    );
  }
}
