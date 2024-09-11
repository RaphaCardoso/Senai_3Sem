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
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _enderecoController = TextEditingController();

  var gender = '';

  void _clear(cleanCheckbox) {
    _nomeController.clear();
    _emailController.clear();
    _telefoneController.clear();
    _enderecoController.clear();
    _onGenderChanged(cleanCheckbox);
  }

  void _onGenderChanged(int index) {
    setState(
      () {
        if (_selectedGenderIndex == index) {
          _selectedGenderIndex = null;
        } else {
          _selectedGenderIndex = index;
          gender = index == 0 ? 'masculino' : 'feminino';
        }
      },
    );
  }

  List<UserModel> users = [];

  Object _onSave() {
    // ignore: unused_local_variable
    var cleanCheckbox = 3;

    if (gender == 'masculino') {
      cleanCheckbox = 0;
    } else {
      cleanCheckbox = 1;
    }

    if (_nomeController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _enderecoController.text.isEmpty ||
        _telefoneController.text.isEmpty) {
      _clear(cleanCheckbox);
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Campos Vazios inválidos!'),
      ));
    } else if (!_emailController.text.contains('@')) {
      _clear(cleanCheckbox);
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Campo email inválido!'),
      ));
    }

    users.add(UserModel(
      name: _nomeController.text,
      email: _emailController.text,
      telefone: _telefoneController.text,
      gender: gender,
      endereco: _enderecoController.text,
    ));

    _clear(cleanCheckbox);

    return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('User Salvo com sucesso!'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Cadastro"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
              onPressed: () {
                if (users.isNotEmpty) {
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
              },
              child: const Text('Mostrar'),
            )
          ],
        ),
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
    // ignore: deprecated_member_use, unused_element
    Color getColor(Set<MaterialState> states) {
      return Colors.white;
    }

    return Row(
      children: [
        Checkbox(
          checkColor: const Color.fromARGB(255, 9, 121, 20),
          // ignore: deprecated_member_use
          fillColor: MaterialStateProperty.all(Colors.white),
          value: isSelected,
          onChanged: (bool? value) {
            if (value == true || (value == false && isSelected)) {
              // Permite selecionar ou desmarcar
              onChanged(index);
            }
          },
        ),
        Text(label),
      ],
    );
  }
}
