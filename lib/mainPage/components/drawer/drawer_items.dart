import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/drawer/controller.dart';
import 'package:my_order/mainPage/components/drawer/drawer_single_item.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = MainDrawerController.of(context);
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            // border: BoxBorder()
          ),
          child: Text('Drawer Header'),
        ),
        ...List.generate(drawerItemsDetails.length, (index) {
          var selected = drawerItemsDetails[index];
          return DrawerSingleItem(ontap: (){
            controller.setIndex(index);
            selected['ontap']();
          },text: selected['text'],icon: selected['icon'],index: index,);
        })
      ],
    );
  }
}
List<Map<String,dynamic>> drawerItemsDetails=[
  {
    'icon' : Icons.home,
    'text' : 'Home',
    'ontap' : (){

    }
  },
  {
    'icon' : Icons.person,
    'text' : 'Profile',
    'ontap' : (){}
  },
  {
    'icon' : Icons.location_on,
    'text' : 'Location',
    'ontap' : (){}
  },
  {
    'icon' : Icons.list_alt,
    'text' : 'Your Orders',
    'ontap' : (){}
  },
  {
    'icon' : Icons.local_offer,
    'text' : 'Offers',
    'ontap' : (){}
  },
  {
    'icon' : Icons.notifications,
    'text' : 'Notifications',
    'ontap' : (){}
  },
  {
    'icon' : Icons.credit_card,
    'text' : 'Talabat Pay',
    'ontap' : (){}
  },
  {
    'icon' : Icons.airplane_ticket,
    'text' : 'Vouchers',
    'ontap' : (){}
  },
  {
    'icon' : Icons.help,
    'text' : 'Help',
    'ontap' : (){}
  },
  {
    'icon' : Icons.assignment_turned_in_rounded,
    'text' : 'About us',
    'ontap' : (){}
  },
  {
    'icon' : Icons.logout,
    'text' : 'Log out',
    'ontap' : (){}
  }
];
