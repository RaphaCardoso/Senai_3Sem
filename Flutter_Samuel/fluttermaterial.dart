----------------------- AULA 1

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
        leading: Icon(Icons.add),
        title: Text('App Senai'),
        actions: [
          Icon(Icons.access_alarm_sharp),
          Icon(Icons.favorite),
          Icon(Icons.add_a_photo_sharp)
         ]
        ),
        body: Center(
          child: const Text('Hello, World!')
        ),
      ),
    );
  }
}

---------------------------------- AULA 2

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            leading: Icon(Icons.add),
            title: Text('App Senai LIBBS'),
            actions: [
              Icon(Icons.access_alarm_sharp),
              Icon(Icons.favorite),
              Icon(Icons.add_a_photo_sharp)
            ]),
        body: Column(
          children: [
            Text('Estou dentro da coluna'), // Texto
            Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber[600],
//                 width: 100.0, // ao não colocar a altura e a largura o container se adequa ao texto
//                 height: 100.0,
                child: Text('Estou dentro do Container')), // Container
          ], // Children => Texto e Container
        ), // body => Coluna
      ), // Scafold
    );
  }
}


*********************************************

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            leading: Icon(Icons.add),
            title: Text('App Senai LIBBS'),
            actions: [
              Icon(Icons.access_alarm_sharp),
              Icon(Icons.favorite),
              Icon(Icons.add_a_photo_sharp)
            ]),
        body: Column(
          children: [
            Text('Estou dentro da coluna',
                style: TextStyle(color: Colors.blueGrey)), // Texto
            Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber[600],
//                 width: 100.0, // ao não colocar a altura e a largura o container se adequa ao texto
//                 height: 100.0,
                //             child: //Text('Estou dentro do Container')), // Container
                child: Column(children: [
                  Row(children: [Icon(Icons.favorite), Text('Primeira linha')]),
                  Text('Segunda linha'),
                  Text('Terceira linha'),
                  Row(children: [
                    Icon(Icons.favorite),
                    Icon(Icons.favorite),
                    Icon(Icons.favorite)
                  ]),
                ] // linha
                    ) // Coluna
                ), // Container
          ], // Children => Texto e Container
        ), // body => Coluna
      ), // Scafold
    );
  }
}


*******************************************

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            title: Text("App Senai LIBBS"),
            leading: Icon(Icons.add),
            actions: [
              Icon(Icons.alarm),
              Icon(Icons.favorite),
              Icon(Icons.message),
            ]),
        body: Column(children: [
          Icon(Icons.accessibility_new),
          Text("Estou dentro da coluna"),
          Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.blue[800],
//                 width: 100.0, // ao não colocar a altura e a largura o container se adequa ao texto
//                 height: 100.0,
              //             child: //Text('Estou dentro do Container')), // Container
              child: Row(children: [
                Icon(Icons.favorite),
                Column(children: [
                  Text('Primeira linha', style: TextStyle(color: Colors.white)),
                  Text('Segunda linha', style: TextStyle(color: Colors.grey)),
                  Text('Terceira linha', style: TextStyle(color: Colors.black)),
                  Row(children: [
                    Icon(Icons.favorite),
                    Icon(Icons.favorite),
                    Icon(Icons.favorite)
                  ]), // linha
                ]), //coluna
              ]) // linha
              ), // Container
        ]),
      ),
    );
  }
}


********************** ATIVIDADE

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.pink[100],
                border: Border.all(color: Colors.pink)),
            padding: EdgeInsets.all(8.0),

            child: Row(children: [
              Column(children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: [
                    Text(
                      'Bolo de Cenoura',
                    )
                  ]), // row
                ),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text(
                        "Esse bolo de cenoura de \n liquidificador fica pronto em menos \n de uma hora e voce o prepara em \n apenas 20 minutos Ingredientes 3 \n cenouras medias",
                      )
                    ]) // Row
                    ), // container

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    const SizedBox(width: 30),
                    Text("250 Reviews")
                  ]), // linha
                ), // Container

                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: [
                    Column(children: [
                      Icon(Icons.circle),
                      Text('Preparo'),
                      const SizedBox(width: 30),
                      Text('25min')
                    ]), // Coluna
                    const SizedBox(width: 30),
                    Column(children: [
                      Icon(Icons.circle),
                      Text('Preparo'),
                      const SizedBox(width: 30),
                      Text('25min')
                    ]), // Coluna
                    const SizedBox(width: 30),
                    Column(children: [
                      Icon(Icons.circle),
                      Text('Preparo'),
                      const SizedBox(width: 30),
                      Text('25min')
                    ]), // Coluna
                  ]), // linha
                ), // Container
              ]), // column principal
              Image.network(
                  "https://t4.ftcdn.net/jpg/06/78/12/01/240_F_678120157_GwrkDJE19x77N2BiSrsml6pN4ef94o8x.jpg"),
            ]), // Row
          ), // container
        ]),
      ),
    );
  }
}
