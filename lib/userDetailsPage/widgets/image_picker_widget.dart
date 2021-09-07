import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_order/userDetailsPage/userDetailsCubit/userdetails_cubit.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final UserdetailsCubit controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext bc) {
              return SafeArea(
                child: Container(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.photo_library),
                          title: Text('Photo Library'),
                          onTap: () {
                            controller.pickImage();
                            Navigator.of(context).pop();
                          }),
                      ListTile(
                        leading: Icon(Icons.photo_camera),
                        title: Text('Camera'),
                        onTap: () {
                          controller.pickPhoto();
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      child: controller.pickedImage != null
          ? CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.file(
                  File(controller.pickedImage!.path),
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            )
          : CircleAvatar(
              radius: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)),
                width: 100,
                height: 100,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.grey[800],
                ),
              ),
            ),
    );
  }
}
