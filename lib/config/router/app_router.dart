import 'package:go_router/go_router.dart';
import 'package:uni_drive/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      name: LoginScreen.routeName,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: RegisterScreen.routeName,
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      name: HomeScreen.routeName,
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: PassengerScreen.routeName,
      path: '/passenger',
      builder: (context, state) => const PassengerScreen(),
    ),
    GoRoute(
      name: DriverScreen.routeName,
      path: '/driver',
      builder: (context, state) => const DriverScreen(),
    ),
  ],
);