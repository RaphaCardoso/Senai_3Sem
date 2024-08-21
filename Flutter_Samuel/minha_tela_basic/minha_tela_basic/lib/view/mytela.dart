import 'package:flutter/material.dart';
import 'package:minha_tela_basic/widgets/container.dart';

class MyTela extends StatelessWidget {
  const MyTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          WidgetContainer(),
          WidgetContainer(),
          WidgetContainer(),
          WidgetContainer(),
          WidgetContainer(),
          Container(
            width: 400,
            margin: EdgeInsets.only(left: 300),
            height: 80,
            color: const Color.fromARGB(255, 107, 202, 104),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 120),
                  child: Text(
                    'Add All To Cart',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  color: const Color.fromARGB(87, 0, 0, 0),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'R\$12,96',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
