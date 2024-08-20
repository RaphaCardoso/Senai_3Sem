import 'package:app_001/constants/style.dart';
import 'package:flutter/material.dart';

class widgetCard extends StatelessWidget {
  const widgetCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: cardDecorado,
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
    );
  }
}
