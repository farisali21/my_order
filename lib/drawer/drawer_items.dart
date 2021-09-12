import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order/notifacations/view.dart';
import 'package:my_order/offers/view.dart';
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

class DrawerItems extends StatelessWidget {
  List<dynamic> pages =[MainPage(),UserDetails(),ChooseLocation(),YourOrders(),OffersPage(),NotificationsPage(),MainPage(),VouchersPage(),MainPage(),MainPage(),MainPage()];

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

List<Map<String, dynamic>> drawerItemsDetails = [
  {'icon': Icons.home, 'text': 'Home'},
  {'icon': Icons.person, 'text': 'Profile',},
  {'icon': Icons.location_on, 'text': 'Location', 'ontap': () {}},
  {'icon': Icons.list_alt, 'text': 'Your Orders', 'ontap': () {}},
  {'icon': Icons.local_offer, 'text': 'Offers', 'ontap': () {}},
  {'icon': Icons.notifications, 'text': 'Notifications', 'ontap': () {}},
  {'icon': Icons.credit_card, 'text': 'Talabat Pay', 'ontap': () {}},
  {'icon': Icons.airplane_ticket, 'text': 'Vouchers', 'ontap': () {}},
  {'icon': Icons.help, 'text': 'Help', 'ontap': () {}},
  {
    'icon': Icons.assignment_turned_in_rounded,
    'text': 'About us',
    'ontap': () {},
  },
  {'icon': Icons.logout, 'text': 'Log out', 'ontap': () {}}
];
