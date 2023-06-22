import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:uni_drive/models/user_model.dart';
import 'package:uni_drive/providers/users_provider.dart';

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
      body: _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  _RegisterView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    final usersProvider = Provider.of<UsersProvider>(context, listen: false);
    String name = '';
    String email = '';
    String registro = '';
    String numero_telefono = '';
    String password = '';
    // String confirm_password = '';
    String foto = 'example.jpg';
    String foto_horario = 'example.jpg';

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

              const Text(
                'Ingrese sus datos',
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su nombre';
                  }
                  if (value.length < 3) {
                    return 'El nombre debe tener al menos 3 caracteres';
                  }
                  if (value.length > 50) {
                    return 'El nombre debe tener menos de 50 caracteres';
                  }
                  return null;
                },
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'ej.: Dario Suarez Lazarte',
                  labelText: 'Nombre de estudiante',
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                onChanged: (value){
                  name = value;
                },
              ),

              const Divider(
                height: 20.0,
                color: Colors.transparent,
              ),

              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su email';
                  }
                  if (!value.contains('@')) {
                    return 'Por favor ingrese un email valido';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'ej.: alguien@example.com',
                  labelText: 'Email de estudiante',
                  suffixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                onChanged: (value){
                  email = value;
                },
              ),

              const Divider(
                height: 20.0,
                color: Colors.transparent,
              ),

              TextFormField(
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
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'ej.: 220030065',
                  labelText: 'Registro de estudiante',
                  suffixIcon: Icon(Icons.app_registration),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                onChanged: (value){
                  registro = value;
                },
              ),

              const Divider(
                height: 20.0,
                color: Colors.transparent,
              ),

              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su numero de celular';
                  }
                  if (!(value.length == 8)) {
                    return 'El numero de celular debe tener 8 caracteres';
                  }
                  final isNumeric = RegExp(r'^[0-9]+$');  //expresión regular para validar que el registro de estudiante solo contenga números

                  if (!isNumeric.hasMatch(value)) {
                    return 'El registro de estudiante debe contener solo números';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'ej.: 65085392',
                  labelText: 'Numero de celular',
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                onChanged: (value){
                  numero_telefono = value;
                },
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
                },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Mínimo 8 caracteres',
                  labelText: 'Contraseña',
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                onChanged: (value) => password = value,
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

                  if(value != password){
                    return "Las contraseñas no coinciden";
                  }

                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Minimo 8 caracteres',
                  labelText: 'Confirmar contraseña',
                  suffixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                onChanged: (value){
                  // confirm_password = value;
                },
              ),

              const Divider(
                height: 20.0,
                color: Colors.transparent,
              ),

              ElevatedButton(
                onPressed: () async{
                  if(_formKey.currentState!.validate()){
                    final n = name;
                    final e = email;
                    final r = registro;
                    final t = numero_telefono;
                    final p = password;
                    final f = foto;
                    final fh = foto_horario;

                    final scaf = ScaffoldMessenger.of(context);
                    // final nav = Navigator.of(context);

                    User user = await usersProvider.registerUser(n, e, p, r, t, f, fh);

                    if(user.id == -1){
                      scaf.showSnackBar(
                        SnackBar(
                          backgroundColor: colors.primary,
                          content: const Center(child: Text('Algo está mal, porfavor vuelva a ingresar sus datos')),
                        )
                      );
                    }

                    if(user.id != -1){
                      await Future.microtask(() {
                        context.pushNamed('home_screen');
                      });
                    }


                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: colors.primary,
                        content: const Center(child: Text('Por favor, ingrese todos sus datos')),
                      )
                    );
                  }
                },
                child: const Text('Registrarme'),
              ),

            ],
          )
        ],
      ),
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
