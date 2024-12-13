import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 4'),
      ),
      body: Column(
        children: [
          Container(height: 100),
          DataTable(sortColumnIndex: 1, columns: [
            DataColumn(label: Text("Primeiro nome")),
            DataColumn(label: Text("Web")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("Leia")),
              DataCell(Text("Wuebu")),
            ]) 
          ],)
        ])
      );
  }
}
