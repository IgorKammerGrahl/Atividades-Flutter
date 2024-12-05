import 'package:flutter/material.dart';

class Atv4 extends StatelessWidget {
  const Atv4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 4'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300.0),
          child: SizedBox(
            height: 150.0, 
            child: Container(
              width: 200.0, 
              color: Colors.blue, 
            ),
          ),
        ),
      ),
    );
  }
}
