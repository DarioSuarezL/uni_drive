import 'package:flutter/material.dart';

class PassengerScreen extends StatelessWidget {
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