import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/userDetailsPage/userDetailsCubit/userdetails_cubit.dart';

import 'text_form_field_user_details.dart';

class UserDetailsForm extends StatelessWidget {
  const UserDetailsForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserdetailsCubit, UserdetailsState>(
      builder: (context, state) {
        final controller = UserdetailsCubit.of(context);
        return Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textFormFieldUserDetails(
                    TextInputType.name, 'Full name', SizedBox()),
                textFormFieldUserDetails(
                    TextInputType.emailAddress, 'Email', SizedBox()),
                textFormFieldUserDetails(
                    TextInputType.number, 'PhoneNumber', SizedBox()),
                textFormFieldUserDetails(
                  TextInputType.name,
                  'Address',
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.location_on,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
                textFormFieldUserDetails(
                    TextInputType.number, 'Password', SizedBox()),
              ],
            ),
          ),
        );
      },
    );
  }
}
