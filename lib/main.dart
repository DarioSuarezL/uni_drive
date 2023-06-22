import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uni_drive/config/theme/app_theme.dart';
import 'package:uni_drive/providers/users_provider.dart';
import 'config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsersProvider()),
      ],
      child: MaterialApp.router(
        // routerDelegate: appRouter.routerDelegate,
        // routeInformationParser: appRouter.routeInformationParser,
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).getTheme(),
      ),
    );
  }
}
