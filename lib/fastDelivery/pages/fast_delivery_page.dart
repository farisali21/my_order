import 'package:flutter/material.dart';
import 'package:my_order/fastDelivery/widgets/app_bar_fast_delivery.dart';
import 'package:my_order/fastDelivery/widgets/tab_bar_icons.dart';

class FastDeliveryPage extends StatelessWidget {
  const FastDeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fastDeliveryAppBar(),
      body: ButtonsTapBarFastDelivery(),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/widgets/search_bar.dart';

class FastDeliveryAppBar extends StatelessWidget {
  const FastDeliveryAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      margin: EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.8,
            child: SearchWidget(
              hintText: 'what are u looking for?',
              text: '',
              onChanged: (_) {},
            ),
          ),
          Text(
            'location',
            style: TextStyle(color: Colors.black),
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(
              Icons.location_on,
              color: Colors.pink,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

*/
