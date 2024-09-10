import 'package:app_one/models/user_model.dart';
import 'package:app_one/view/ShowUsersScreen.dart';
import 'package:flutter/material.dart';
import 'package:app_one/widgets/container_input.dart';

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  int? _selectedGenderIndex;
  // Criar controladores para cada campo de entrada
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  TextEditingController _enderecoController = TextEditingController();

  var gender = '';

  void _onGenderChanged(int index) {
    setState(() {
      _selectedGenderIndex = index;

      if (index == 0) {
        gender = 'masculino';
// ignore: curly_braces_in_flow_control_structures
      } else
        // ignore: curly_braces_in_flow_control_structures
        (gender = 'feminino');
    });
  }

  List<UserModel> users = [];

  bool _onSave() {
    if (_nomeController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _enderecoController.text.isEmpty ||
        _telefoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Campos Vazios inválidos!'),
      ));
      return false;
    } else if (!_emailController.text.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Campo email inválido!'),
      ));
      return false;
    }

    users.add(UserModel(
      name: _nomeController.text,
      email: _emailController.text,
      telefone: _telefoneController.text,
      gender: gender,
      endereco: _enderecoController.text,
    ));

    return true;
  }

  void _clear() {
    _nomeController.clear();
    _emailController.clear();
    _telefoneController.clear();
    _enderecoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Cadastro"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          WidgetInput(
            inputName: 'Nome',
            inputDica: 'Digite seu nome...',
            controller: _nomeController,
          ),
          WidgetInput(
            inputName: 'Email',
            inputDica: 'Digite seu e-mail...',
            controller: _emailController,
          ),
          WidgetInput(
            inputName: 'Telefone',
            inputDica: 'Digite seu telefone...',
            controller: _telefoneController,
          ),
          WidgetInput(
            inputName: 'Endereço',
            inputDica: 'Digite seu endereço...',
            controller: _enderecoController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 340,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          children: [
                            Text('Gênero:'),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                CheckboxExample(
                                  label: 'Masculino',
                                  index: 0,
                                  isSelected: _selectedGenderIndex == 0,
                                  onChanged: _onGenderChanged,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CheckboxExample(
                                  label: 'Feminino  ',
                                  index: 1,
                                  isSelected: _selectedGenderIndex == 1,
                                  onChanged: _onGenderChanged,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(15),
                                textStyle: const TextStyle(fontSize: 18),
                              ),
                              onPressed: _onSave,
                              child: const Text('Salvar'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(),
            onPressed: () {
              bool situation = _onSave();
              if (users.isNotEmpty && situation) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShowUsersScreen(
                      users: users,
                    ),
                  ),
                );
              } else {
                const snackBar = SnackBar(
                  content: Text('Precisa cadastrar pelo menos 1 usuário!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
              _clear();
            },
            child: Text('Mostrar'),
          )
        ],
      ),
    );
  }
}

class CheckboxExample extends StatelessWidget {
  final String label;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onChanged;

  const CheckboxExample({
    super.key,
    required this.label,
    required this.index,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    Color getColor(Set<MaterialState> states) {
      return Colors.white;
    }

    return Row(
      children: [
        Checkbox(
          checkColor: const Color.fromARGB(255, 9, 121, 20),
          // ignore: deprecated_member_use
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isSelected,
          onChanged: (bool? value) {
            if (value == true) {
              onChanged(index);
            }
          },
        ),
        Text(label),
      ],
    );
  }
}


// Validações
// Campo genero ser reiniciado
// estilo da outra página e deixar rolável
// arrumar botão salvar e mostrar