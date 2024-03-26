import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:parent/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MapPage extends StatelessWidget {
  MapPage({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup15,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 392.h,
            decoration: AppDecoration.fillPrimary.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup15,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 36.v),
                _buildMap(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 724.v,
      width: 332.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
