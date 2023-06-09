import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {

  static const String routeName = 'register_screen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¡Bienvenido!'),
      ),
      body: const Text('REGISTRO'),
    );
  }
}



// import 'package:flutter/material.dart';

// class RegisterScreen extends StatefulWidget {

//   static const String routeName = 'register_screen';

//   const RegisterScreen({super.key});

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Register',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Register body'),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
//       ),
//     );
//   }
// }
