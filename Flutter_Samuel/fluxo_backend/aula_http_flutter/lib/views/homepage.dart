import 'package:flutter/material.dart';

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (image != null) Image.network(image!),
          ElevatedButton(
            onPressed: () async {
              // Chamar a API e mostrar os dados no console
              var url = 'https://fakestoreapi.com/products/1';
              //  uri.parse() = tranforma uma string url em URL
              var response = await http.get(Uri.parse(url));

              var jsonResponse = convert.jsonDecode(response.body);

              setState(() {
                image = jsonResponse['image'];
              });

              // chave -> [ valor ]
              print(jsonResponse['title']);
              print(jsonResponse['image']);
              print(jsonResponse['description']);
              print(jsonResponse['category']);
              print(jsonResponse['price']);
              print(jsonResponse['rating']['rate']);
              print(jsonResponse['rating']['count']);
            },
            child: const Text('Get Data'),
          )
        ],
      ),
    );
  }
}
