import 'package:flutter/material.dart';

class PassengerScreen extends StatelessWidget {

  static const String routeName = 'passenger_screen';

  const PassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pasajero'),
      ),
      body: Center(
        child: Text('Pasajero'),
      )
    );
  }
}