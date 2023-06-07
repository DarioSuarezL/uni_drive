import 'package:flutter/material.dart';
import 'package:uni_drive/presentation/screens/driver/driver_screen.dart';
import 'package:uni_drive/presentation/screens/home/home_screen.dart';
import 'package:uni_drive/presentation/screens/passenger/passenger_screen.dart';
import 'package:uni_drive/config/theme/app_theme.dart';
import 'config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
    );
  }
}
