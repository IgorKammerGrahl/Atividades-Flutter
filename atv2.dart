import 'package:flutter/material.dart';

class Atv2 extends StatelessWidget {
  const Atv2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividade 2'),
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0)),
                ElevatedButton(onPressed: (){}, child: const Text('É')),
            ],
          ),
        )
    );
  }
}