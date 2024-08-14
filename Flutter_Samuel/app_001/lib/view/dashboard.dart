import 'package:flutter/material.dart';

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
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Pesquisar na Loja',
                prefixIcon: Icon(Icons.search),
                fillColor: Color.fromARGB(
                    255, 240, 235, 235), // Para preencher precisa ativiar
                filled: true,
              ),
            ),
          ),
          const widgetPropaganda(),
          Row(
            children: [
              Container(
                height: 350,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(78, 71, 75, 70),
                    width: 4.0,
                    style: BorderStyle.solid,
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/banana.png'),
                    const Text(
                      "Banana Nanica",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Banana direto da bananeira baiana",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "R\$2,99",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.add_circle,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(78, 71, 75, 70),
                    width: 4.0,
                    style: BorderStyle.solid,
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/banana.png'),
                    const Text(
                      "Banana Nanica",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Banana direto da bananeira baiana",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "R\$2,99",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.add_circle,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text("cards de fruta"),
          const Text("mais vendidos"),
          const Text("card de frutas")
        ], // Children
      ),
    );
  }
}

// "stl" para colocar os códigos iniciais
