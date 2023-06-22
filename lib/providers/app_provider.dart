import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uni_drive/services/google_maps_services.dart';

class AppProvider with ChangeNotifier{
  static LatLng _initialPosition = const LatLng(-17.7752845,-63.1975095);
  LatLng _lastPosition = _initialPosition;
  bool locationServicesActive = true;
  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};
  late GoogleMapController _mapController;
  GoogleMapsServices _googleMapsServices = GoogleMapsServices();
}