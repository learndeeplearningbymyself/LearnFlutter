import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../models/place.dart';

class MapScreen extends StatefulWidget {
  final PlaceLocation intialLocation;
  final bool isSelecting;

  MapScreen({
    this.intialLocation =
        const PlaceLocation(latitude: 37.4220, longitude: -122.0840),
    this.isSelecting = false,
  });

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your map'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            widget.intialLocation.latitude,
            widget.intialLocation.longitude,
          ),
          zoom: 16,
        ),
      ),
    );
  }
}
