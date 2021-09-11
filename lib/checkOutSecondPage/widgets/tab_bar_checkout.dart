import 'package:flutter/material.dart';
import 'package:my_order/checkOutSecondPage/widgets/visa_widget.dart';
import 'package:my_order/constants/constants.dart';

class TapBarCheckout extends StatelessWidget {
  const TapBarCheckout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                indicatorWeight: 2,
                indicatorColor: defaultColor,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Visa',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Icon(
                          Icons.money,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    VisaWidget(),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
