import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'userdetails_state.dart';

class UserdetailsCubit extends Cubit<UserdetailsState> {
  UserdetailsCubit() : super(UserdetailsInitial());
  static UserdetailsCubit of(context) => BlocProvider.of(context);
  final ImagePicker _picker = ImagePicker();
  XFile? pickedImage;
  bool editMode = false;

  void pickImage() async {
    // Pick an image
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 150,
    );
    pickedImage = image;
    print(pickedImage);
    emit(UserdetailsRebuild());
  }

  void pickPhoto() async {
    // Capture a photo
    final XFile? photo = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxWidth: 150,
    );
    pickedImage = photo;
    emit(UserdetailsRebuild());
  }

  void changeEditMode() {
    editMode = true;
    emit(UserdetailsRebuild());
  }
}
