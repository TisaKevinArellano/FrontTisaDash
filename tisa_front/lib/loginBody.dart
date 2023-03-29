// ignore_for_file: file_names

import 'package:flutter/material.dart';


class LoginBody extends StatefulWidget {
  
  const LoginBody({super.key});
  
  @override
  State<LoginBody> createState() => _LoginBody();
}

class _LoginBody extends State<LoginBody> {
  final GlobalKey<FormState>_formKey = GlobalKey();
  // ignore: prefer_typing_uninitialized_variables
  var usuario;
  // ignore: prefer_typing_uninitialized_variables
  var password;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width/5,
         child: 
         Form(
          key: _formKey,
           child: Column( 
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
              SizedBox(height: MediaQuery.of(context).size.height/7,),
             TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: "Usuario"
              ),
              validator: (inpuser) {
                usuario = inpuser;
                if (usuario.trim().isEmpty){
                  return "este campo no puede estar vacio";
                }
                return null;
              },
             ),
             TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Contraseña"
              ),
              validator: (inppassword)  {
                password = inppassword;
                if (password.trim().isEmpty){
                  return "este campo no puede estar vacio";
                }
                return null;
              },
             ),
             TextButton(onPressed: () => {
              //Aqui va revision de tipo de usuario que esta haciendo el log in
              if (_formKey.currentState!.validate()){

                // ignore: avoid_print
                print(_formKey.currentState!.validate()),
                
                // ignore: avoid_print
                print("Usuario: $usuario, Contraseña: $password"),
                Navigator.of(context).pushNamedAndRemoveUntil(('/Consultar'), (route) => false)
              }
             }, child: const Text("Log In"))
             ]
             ),
         ),
       ),
    );
  }
}