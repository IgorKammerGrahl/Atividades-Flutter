import 'package:flutter/material.dart';

class alunos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tabela de Estudantes'),
          centerTitle: true,
        ),
        body: StudentTable(),
      ),
    );
  }
}

class StudentTable extends StatelessWidget {
  final List<Map<String, dynamic>> students = [
    {'nome': 'Alice Silva', 'idade': 20, 'nota': 8.5},
    {'nome': 'Bruno Costa', 'idade': 22, 'nota': 7.8},
    {'nome': 'Carlos Lima', 'idade': 19, 'nota': 9.0},
    {'nome': 'Diana Sousa', 'idade': 21, 'nota': 8.0},
    {'nome': 'Eduardo Alves', 'idade': 23, 'nota': 7.5},
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DataTable(
        columnSpacing: 30,
        columns: [
          DataColumn(
              label: Text('Nome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          DataColumn(
              label: Text('Idade',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          DataColumn(
              label: Text('Nota Final',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
        ],
        rows: students
            .map(
              (student) => DataRow(cells: [
                DataCell(Text(student['nome'])),
                DataCell(Text(student['idade'].toString())),
                DataCell(Text(student['nota'].toString())),
              ]),
            )
            .toList(),
      ),
    );
  }
}
