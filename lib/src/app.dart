import 'dart:ui';

import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  _MyAppFormState createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  late String _nombre;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/logo.png'),
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'NerkoOne',
                  fontSize: 50.0,
                ),
              ),
              SizedBox(
                width: 160,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600],
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Nombre',
                    labelText: 'Nombre',
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print('El nombre es $_nombre');
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _email = valor;
                  print('El Correo es $_email');
                },
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                enableIMEPersonalizedLearning: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock_clock_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _password = valor;
                  print('La Contraseña es $_password');
                },
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                        color: Color.fromARGB(179, 7, 6, 6),
                        fontSize: 30.0,
                        fontFamily: 'NerkoOne'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
