import 'package:flutter/material.dart';

const InputDecoration textFieldDecoration = InputDecoration(
  border: OutlineInputBorder(),
  hintText: 'Pesquisar na Loja',
  prefixIcon: Icon(Icons.search),
  fillColor:
      Color.fromARGB(255, 240, 235, 235), // Para preencher precisa ativiar
  filled: true,
);

BoxDecoration cardDecorado = BoxDecoration(
  border: Border.all(
    color: const Color.fromARGB(255, 160, 212, 153),
    width: 4.0,
    style: BorderStyle.solid,
  ),
  borderRadius: BorderRadius.all(Radius.circular(20)),
);
