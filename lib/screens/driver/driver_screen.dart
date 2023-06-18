import 'package:flutter/material.dart';

class DriverScreen extends StatelessWidget {

  static const String routeName = 'driver_screen';

  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conductor'),
      ),
      body: Center(
        child: Text('Conductor'),
      )
    );
  }
}