import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/drawer/drawer_single_item.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            // border: BoxBorder()
          ),
          child: Text('Drawer Header'),
        ),
        DrawerSingleItem(icon: Icons.home, text: 'Home', ontap: (){},),
        DrawerSingleItem(icon: Icons.person, text: 'Profile', ontap: (){},),
        DrawerSingleItem(icon: Icons.location_on, text: 'Location', ontap: (){},),
        DrawerSingleItem(icon: Icons.list_alt, text: 'Your Orders', ontap: (){},),
        DrawerSingleItem(icon: Icons.local_offer, text: 'Offers', ontap: (){},),
        DrawerSingleItem(icon: Icons.notifications, text: 'Notifications', ontap: (){},),
        DrawerSingleItem(icon: Icons.credit_card, text: 'Talabat Pay', ontap: (){},),
        DrawerSingleItem(icon: Icons.airplane_ticket, text: 'Vouchers', ontap: (){},),
        DrawerSingleItem(icon: Icons.help, text: 'Help', ontap: (){},),
        DrawerSingleItem(icon: Icons.assignment_turned_in_rounded, text: 'About us', ontap: (){},),
        DrawerSingleItem(icon: Icons.logout, text: 'Log out', ontap: (){},),
      ],
    );
  }
}
