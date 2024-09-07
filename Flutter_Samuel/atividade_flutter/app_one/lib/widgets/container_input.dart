import 'package:flutter/material.dart';

class WidgetInput extends StatelessWidget {
  final String inputName;
  final String inputDica;
  final TextEditingController controller;

  const WidgetInput({
    super.key,
    required this.inputName,
    required this.inputDica,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(25),
        width: 500,
        height: 100,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: inputDica,
              label: Text(
                inputName,
                style: const TextStyle(),
              )),
        ),
      ),
    );
  }
}
