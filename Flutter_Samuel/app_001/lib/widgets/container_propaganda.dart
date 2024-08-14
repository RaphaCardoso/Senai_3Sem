import 'package:flutter/material.dart';

// ignore: camel_case_types
class widgetPropaganda extends StatelessWidget {
  const widgetPropaganda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green[50],
        border: Border.all(
          color: const Color.fromARGB(78, 71, 75, 70),
          width: 4.0,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        image: const DecorationImage(
          image: AssetImage('assets/images/fruits.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 20,
            child: Text(
              "Ofertas Sensacionais",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                backgroundColor: Color.fromARGB(118, 0, 0, 0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
