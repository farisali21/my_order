import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import '../widegts/app_bar.dart';
import 'userDetailsCubit/userdetails_cubit.dart';
import 'widgets/image_picker_widget.dart';
import 'widgets/user_details_form_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserdetailsCubit(),
      child: BlocBuilder<UserdetailsCubit, UserdetailsState>(
        builder: (context, state) {
          final controller = UserdetailsCubit.of(context);
          Future<bool> onBack() {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MainPage()));
            return new Future.value(true);
          }

          return WillPopScope(
              onWillPop: onBack,
              child: Scaffold(
                appBar: loginAppBar([
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding:  EdgeInsets.only(
                        right: context.locale.toString() =="en"?15.0:0,
                        left:context.locale.toString() =="ar"?15.0:0 ,
                        top: 15.0,
                      ),
                      child: Text(
                        LocaleKeys.user_details_save.tr(),
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ], LocaleKeys.user_details.tr(), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
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
                            onPressed: () {},
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
