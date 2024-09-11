import 'package:flutter/material.dart';
import 'package:app_one/models/user_model.dart';

class ShowUsersScreen extends StatelessWidget {
  const ShowUsersScreen({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'), // Use the title property
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          IconData sexIcon;
          Color containerColor;

          if (user.gender == 'masculino') {
            sexIcon = Icons.boy;
            containerColor =
                const Color.fromARGB(255, 159, 209, 251); // Azul para masculino
          } else if (user.gender == 'feminino') {
            sexIcon = Icons.girl;
            containerColor = const Color.fromARGB(
                255, 255, 150, 143); // Vermelho para feminino
          } else {
            sexIcon = Icons.close;
            containerColor = Colors.grey; // Cor padrão para outros casos
          }

          return Column(
            children: [
              Container(
                width: 280,
                height: 100,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: containerColor, // Define a cor com base no gênero
                ),
                child: Row(
                  children: [
                    Icon(
                      sexIcon,
                      size: 75,
                    ),
                    const SizedBox(
                        width: 10), // Adiciona espaçamento entre ícone e texto
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(user.telefone),
                          Text(user.email),
                          Text(user.endereco),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
