import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

// import 'package:pet_adopt_project/models/user_model.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 300,
          height: 400,
          child: Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text('Email:'),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your email',
                      ),
                      cursorColor: Color.fromARGB(255, 255, 255, 255),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text('Senha:'),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password',
                      ),
                      cursorColor: Color.fromARGB(255, 255, 255, 255),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.only(
                              left: 50, right: 50, top: 15, bottom: 15)),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(150, 124, 77, 255))),
                      onPressed: () async {
                        var client = http.Client();

                        var url = 'http://10.92.198.38:4000/user/login';

                        var bodyRegistro = {
                          "email": "emailRaphael@gmail.com",
                          "password": "123456789"
                        };

                        try {
                          var response = await client.post(Uri.parse(url),
                              headers: {"Content-Type": "application/json"},
                              body: json.encode(bodyRegistro));

                          print(response.body);
                        } finally {
                          client.close();
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
