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
        Table(
          border: const TableBorder(
            top: BorderSide(width: 2),
            bottom: BorderSide(width: 2),
            left: BorderSide(width: 2),
            right: BorderSide(width: 2)), 
          children: const [
            TableRow(children: [
              Center(child: 
              Padding(padding: EdgeInsets.all(10), child: Text("1"))),
              Center(child: 
              Padding(padding: EdgeInsets.all(10), child: Text("2"),)),
            Center(child: 
            Padding(padding: EdgeInsets.all(10), child: Text("3")))
            ]),
             TableRow(children: [
              Center(child: 
              Padding(padding: EdgeInsets.all(10), child: Text("4"))),
              Center(child: 
              Padding(padding: EdgeInsets.all(10), child: Text("5"),)),
            Center(child: 
            Padding(padding: EdgeInsets.all(10), child: Text("6")))
            ])
          ]
          ),
        ])
        
      );
  }
}
