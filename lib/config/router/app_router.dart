import 'package:go_router/go_router.dart';
import 'package:uni_drive/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/passenger',
      builder: (context, state) => PassengerScreen(),
    ),
    GoRoute(
      path: '/driver',
      builder: (context, state) => DriverScreen(),
    ),
  ],
);