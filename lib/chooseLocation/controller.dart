import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_order/chooseLocation/state.dart';

class ChooseMapController extends Cubit<ChooseMapState> {

  ChooseMapController():super(ChooseMapInit());
  static ChooseMapController of(context)=> BlocProvider.of(context);
  final LatLng defaultPos = const LatLng(29.9538,31.5370);
  Completer<GoogleMapController> controller = Completer();
  Marker marker = Marker(
    markerId: MarkerId('origin'),
    infoWindow: InfoWindow(title: 'Origin'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    position: LatLng(29.9538,31.5370),
  );
  void addMarker(LatLng pos)
  {
      marker = Marker(
        markerId: MarkerId('origin'),
        infoWindow: InfoWindow(title: 'Origin'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position: pos,
      );
      emit(ChooseMapInit());
  }
  Future<void> getMyLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    addMarker(LatLng(position.latitude, position.longitude));
    final GoogleMapController googleController = await controller.future;
    googleController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        zoom: 14,
        target: LatLng(position.latitude, position.longitude)
    )));
    emit(ChooseMapInit());

  }
}