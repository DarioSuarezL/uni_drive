import 'package:flutter/material.dart';
import 'package:uni_drive/config/presentation/screens/driver/driver_screen.dart';
import 'package:uni_drive/config/presentation/screens/home/home_screen.dart';
import 'package:uni_drive/config/presentation/screens/passenger/passenger_screen.dart';
import 'package:uni_drive/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
       home: const HomeScreen(), //Scaffold(
        routes: {
          '/passenger':(context) => const PassengerScreen(),
          '/driver':(context) => const DriverScreen(),
        }
    );
  }
}
