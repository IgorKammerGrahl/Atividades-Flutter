import 'package:flutter/material.dart';

class Atv5 extends StatelessWidget {
  const Atv5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 5'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Texto 1',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis, 
              ),
            ),
            Expanded(
              child: Text(
                'Texto 2',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis, 
              ),
            ),
            Expanded(
              child: Text(
                'Texto 3',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
