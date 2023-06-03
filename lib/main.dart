import 'package:flutter/material.dart';
import 'package:uni_drive/config/presentation/screens/home/home_screen.dart';
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
      theme: AppTheme(selectedColor: 7).getTheme(),
       home: const HomeScreen(), //Scaffold(
      //   body: Center(
      //     child: FilledButton(child: Text('Hello World!'), onPressed: () {},),
      //   ),
      // ),
    );
  }
}
