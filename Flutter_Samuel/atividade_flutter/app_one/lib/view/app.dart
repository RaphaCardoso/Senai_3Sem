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
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

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

  void _onSave() {
    final String nome = _nomeController.text;
    final String email = _emailController.text;
    final String telefone = _telefoneController.text;
    final String cpf = _cpfController.text;
    final String genero = gender;
    final String descricao = _descricaoController.text;

    var formulario = {
      'Nome: $nome',
      'Email: $email',
      'Telefone: $telefone',
      'CPF: $cpf',
      'Gênero: $genero',
      'Descrição: $descricao'
    };

    // ignore: avoid_print
    print(formulario);
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
            inputName: 'CPF',
            inputDica: 'Digite seu CPF...',
            controller: _cpfController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 450,
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
          WidgetInput(
            inputName: 'Descrição',
            inputDica: 'Digite a Descrição...',
            controller: _descricaoController,
          ),
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
