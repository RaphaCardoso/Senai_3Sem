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
          if (user.gender == 'masculino') {
            sexIcon = Icons.boy;
          } else if (user.gender == 'feminino') {
            sexIcon = Icons.girl;
          } else {
            sexIcon = Icons.close;
          }

          return Column(
            children: [
              Row(
                children: [
                  Icon(sexIcon),
                  Text(' ${user.name} - ${user.telefone}'),
                ],
              ),
              Row(
                children: [
                  Text('${user.email} - ${user.telefone} '),
                ],
              ),
              Row(
                children: [
                  Text(user.email),
                ],
              ),
              Row(
                children: [
                  Text(user.endereco),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
