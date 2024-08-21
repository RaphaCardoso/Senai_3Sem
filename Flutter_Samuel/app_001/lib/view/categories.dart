import 'package:flutter/material.dart';

// import '../constants/style.dart';
import '../widgets/container_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Minha dashboard")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                width: 200,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 160, 212, 153),
                    width: 4.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: const Color.fromARGB(255, 219, 231, 218),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/vagetables.png',
                      scale: 0.8,
                    ),
                    const Text(
                      "Frash Fruits & Vegetables",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 200,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 187, 166, 109),
                    width: 4.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: const Color.fromARGB(255, 243, 216, 143),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/vagetables.png',
                      scale: 0.8,
                    ),
                    const Text(
                      "Frash Fruits & Vegetables",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const widgetCard(),
              const widgetCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const widgetCard(),
              const widgetCard(),
            ],
          )
        ],
      ),
    );
  }
}

// stls => para iniciar o programa