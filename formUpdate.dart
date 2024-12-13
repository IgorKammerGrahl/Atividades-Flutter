import 'package:flutter/material.dart';

class FormularioUpdate extends StatefulWidget {
  const FormularioUpdate({super.key});

  @override
  State<FormularioUpdate> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormularioUpdate> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  bool _isSwitched = false; 
  bool _checkbox1 = false; 
  bool _checkbox2 = false; 
  bool _checkbox3 = false;
  String _selectedRadio = 'Opção 1'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário Therian'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome de Therian',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite seu nome Therian';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              const SizedBox(height: 16.0),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite seu email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Digite um email válido';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              const SizedBox(height: 16.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Modo Therian:'),
                  Switch(
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),

              const Text('Selecione suas habilidades:'),
              CheckboxListTile(
                title: const Text('Visão Noturna'),
                value: _checkbox1,
                onChanged: (value) {
                  setState(() {
                    _checkbox1 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Audição Apurada'),
                value: _checkbox2,
                onChanged: (value) {
                  setState(() {
                    _checkbox2 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Força Sobrenatural'),
                value: _checkbox3,
                onChanged: (value) {
                  setState(() {
                    _checkbox3 = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),

              const Text('Escolha sua forma Therian:'),
              RadioListTile(
                title: const Text('Lobo'),
                value: 'Opção 1',
                groupValue: _selectedRadio,
                onChanged: (value) {
                  setState(() {
                    _selectedRadio = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('Gato'),
                value: 'Opção 2',
                groupValue: _selectedRadio,
                onChanged: (value) {
                  setState(() {
                    _selectedRadio = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('Raposa'),
                value: 'Opção 3',
                groupValue: _selectedRadio,
                onChanged: (value) {
                  setState(() {
                    _selectedRadio = value.toString();
                  });
                },
              ),
              const SizedBox(height: 32.0),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Formulário enviado:\nNome: $_name\nEmail: $_email\nModo Therian: $_isSwitched\n'
                          'Visão Noturna: $_checkbox1, Audição Apurada: $_checkbox2, Força Sobrenatural: $_checkbox3\n'
                          'Forma Therian: $_selectedRadio',
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
