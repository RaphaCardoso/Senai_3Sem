import 'package:app_001/constants/style.dart';
import 'package:flutter/material.dart';

import '../widgets/container_produtos.dart';
import '../widgets/container_propaganda.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Minha dashboard")),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo_sacolao.png",
              height: 100,
            ),
          ),
          const Row(
            children: [
              Icon(Icons.location_on),
              Text("São Paulo, SP"),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: TextField(decoration: textFieldDecoration),
          ),
          const widgetPropaganda(),
          const widgetProduto(),
          const Text("cards de fruta"),
          const Text("mais vendidos"),
          const Text("card de frutas")
        ], // Children
      ),
    );
  }
}



// "stl" para colocar os códigos iniciais
