import 'package:flutter/material.dart';

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
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Pesquisar na Loja',
                prefixIcon: Icon(Icons.search),
                fillColor: Color.fromARGB(
                    255, 197, 188, 188), // Para preencher precisa ativiar
                filled: true,
              ),
            ),
          ),
          Container(
            margin: 10,
            height: 500,
            width: 500,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(40.0)
                ),
              ),
          ),
          const Text("OFERTAS"),
          const Text("cards de fruta"),
          const Text("mais vendidos"),
          const Text("card de frutas")
        ], // Children
      ),
    );
  }
}

// "stl" para colocar os códigos iniciais
