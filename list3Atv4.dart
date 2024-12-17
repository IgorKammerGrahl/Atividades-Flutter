import 'package:flutter/material.dart';

class tarefas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Tarefas'),
          centerTitle: true,
        ),
        body: TaskListScreen(),
      ),
    );
  }
}

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Map<String, dynamic>> tasks = [
    {'title': 'Estudar Flutter', 'description': 'Praticar widgets básicos', 'completed': false},
    {'title': 'Fazer compras', 'description': 'Comprar frutas e vegetais', 'completed': false},
    {'title': 'Academia', 'description': 'Treino de perna e costas', 'completed': false},
    {'title': 'Ler um livro', 'description': 'Terminar o capítulo 5', 'completed': false},
    {'title': 'Projeto pessoal', 'description': 'Avançar no aplicativo', 'completed': false},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: ListTile(
            leading: Checkbox(
              value: tasks[index]['completed'],
              onChanged: (bool? value) {
                setState(() {
                  tasks[index]['completed'] = value ?? false;
                });
              },
              activeColor: Colors.green,
            ),
            title: Text(
              tasks[index]['title'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: tasks[index]['completed'] ? TextDecoration.lineThrough : null,
              ),
            ),
            subtitle: Text(tasks[index]['description']),
          ),
        );
      },
    );
  }
}
