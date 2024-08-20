import 'package:flutter/material.dart';

// import 'container_card.dart';

class widgetProduto extends StatelessWidget {
  const widgetProduto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const widgetCard(),
        Container(
          height: 350,
          width: 200,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(78, 71, 75, 70),
              width: 4.0,
              style: BorderStyle.solid,
            ),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/apple.png',
                scale: 18,
              ),
              const Text(
                "Maça Gala",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Red Apple",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "R\$3,99",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.add_circle,
                    color: Colors.green,
                    size: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
