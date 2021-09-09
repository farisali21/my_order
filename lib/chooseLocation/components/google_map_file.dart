import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controller.dart';

class GoogleMapFile extends StatelessWidget {
  const GoogleMapFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var blocController = ChooseMapController.of(context);

    return BlocBuilder(
        bloc: blocController,
        builder: (context,state)
        {
          return GoogleMap(
            onTap: blocController.addMarker,
            markers: {
              blocController.marker,
            },
            myLocationButtonEnabled: true ,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
                zoom: 11.5,
                target: blocController.defaultPos
            ),
            onMapCreated: (GoogleMapController controller) {
              blocController.controller.complete(controller);
            },
          );
        }
    );
  }
}
