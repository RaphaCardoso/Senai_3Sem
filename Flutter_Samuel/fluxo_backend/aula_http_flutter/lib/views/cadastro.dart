import 'dart:convert';

import 'package:flutter/material.dart';

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

// import 'package:pet_adopt_project/models/user_model.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                'Cadastro',
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
                        Text('Nome:'),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(
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
                        Text('Email:'),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(
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
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(
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

                        var url = 'http://10.92.198.38:4000/user/cadastro';

                        var bodyRegistro = {
                          "name": "Raphael Cardoso",
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
                        'Cadastrar',
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
