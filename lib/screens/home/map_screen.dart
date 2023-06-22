import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  static const String routeName = 'map_screen';

  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}


class _MapScreenState extends State<MapScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccione su destino'),
      ),
      body: SafeArea(
        child: Container(),

      ),
    );
  }


  // void onCreated(GoogleMapController controller){
  //   _mapController = controller;
  // }
}
