import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyFisrtApp());
// }

class MyFisrtApp extends StatelessWidget {
  const MyFisrtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      );
  }
}
