import 'dart:math';

import 'package:flutter/material.dart';

class Atv3 extends StatelessWidget {
  const Atv3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 3'),
      ),
      body: Center(
         child: Transform.rotate(
           angle: pi / 4, 
           child: Container(   
              height: 100,
              width: 100,
              color: Colors.blue, 
            ),
        ),
      ),
    );
  }
}
