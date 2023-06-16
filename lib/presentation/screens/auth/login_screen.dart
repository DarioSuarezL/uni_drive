import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {

  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¡Bienvenido!'),
      ),
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  _LoginView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    
    return Form(
      key: _formKey,
      child: ListView(
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
    
              TextFormField(
                //220030065
                validator: (value) {
                  
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su registro de estudiante';
                  }

                  final isNumeric = RegExp(r'^[0-9]+$');  //expresión regular para validar que el registro de estudiante solo contenga números

                  if (!isNumeric.hasMatch(value)) {
                    return 'El registro de estudiante debe contener solo números';
                  }

                  if(value.length > 9){
                    return "El registro de estudiante no es válido";
                  }
                  return null;
                },
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'ej.: 220030065',
                  labelText: 'Registro de estudiante',
                  suffixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
              ),
    
              const Divider(
                height: 20.0,
                color: Colors.transparent,
              ),
    
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su contraseña';
                  }

                  if(value.length < 8){
                    return "La contraseña debe tener al menos 8 caracteres";
                  }

                  return null;
                } ,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Mínimo 8 caracteres',
                  labelText: 'Contraseña',
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
              ),
    
              const Divider(
                height: 20.0,
                color: Colors.transparent,
              ),
    
              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    context.pushNamed('home_screen');
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: colors.primary,
                        content: const Center(child: Text('Por favor, ingrese sus credenciales')),
                      )
                    );
                  }
                }, 
                child: const Text('Iniciar sesión'),
              ),
    
              //TODO: Arreglar esto de los custom dividers
    
              const Divider(
                height: 60.0,
                color: Colors.transparent,
              ),
    
              TextButton(
                onPressed: (){
                  context.pushNamed('register_screen');
                }, 
                child: const Text('¿No tienes una cuenta? Regístrate aquí'),
              ),
            ],
          )
        ],
      ),
    );
  }
}


