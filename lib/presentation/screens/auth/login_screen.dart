import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {

  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¡Bienvenido!'),
      ),
      body: const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        Column(
          children: [

            Center(
              child: Image.asset(
                'assets/uni_drive_logo.png',
                width: 200,
                height: 200,
              )
            ),

              // backgroundImage: AssetImage('assets/uni_drive_logo.png'),

            const Text(
              'Ingrese su cuenta', 
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
            ),

            const SizedBox(
              width: 150.0,
              height: 40.0,
              child: Divider(
                color: Colors.black,
              ),
            ),

            const TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'ej.: 220030065',
                labelText: 'Registro de estudiante',
                suffixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
            ),

            const _CustomDivider(),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Mínimo 8 caracteres',
                labelText: 'Contraseña',
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
            ),

            const _CustomDivider(),

            ElevatedButton(
              onPressed: (){}, 
              child: const Text('Iniciar sesión'),
            ),

            //TODO: Arreglar esto de los custom dividers

            const _CustomDivider(),
            const _CustomDivider(),
            const _CustomDivider(),

            GestureDetector(
              onTap: (){
                context.pushNamed('register_screen');
              }, 
              child: const Text('¿No tienes una cuenta? Regístrate aquí'),
            ),
          ],
        )
      ],
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 20.0,
      color: Colors.transparent,
    );
  }
}

