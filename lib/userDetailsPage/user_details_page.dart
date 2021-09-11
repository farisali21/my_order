import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/mainPage/view.dart';
import '../widegts/app_bar.dart';
import 'userDetailsCubit/userdetails_cubit.dart';
import 'widgets/image_picker_widget.dart';
import 'widgets/user_details_form_widget.dart';

class UserDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserdetailsCubit(),
      child: BlocBuilder<UserdetailsCubit, UserdetailsState>(
        builder: (context, state) {
          final controller = UserdetailsCubit.of(context);
          Future<bool> onBack(){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage()));
            return new Future.value(true);
          }
          return WillPopScope(
              onWillPop:onBack ,
              child: Scaffold(
            appBar: loginAppBar([
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                    top: 15.0,
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ], 'User details', () {
              Navigator.pop(context);
            }),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ImagePickerWidget(controller: controller),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fares',
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.edit),
                      )
                    ],
                  ),
                  UserDetailsForm(),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
