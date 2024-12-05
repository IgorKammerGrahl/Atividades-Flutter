import 'package:flutter/material.dart';

class Atv1 extends StatelessWidget {
  const Atv1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividade 1'),
      ),
      body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                ElevatedButton(onPressed: (){}, child: const Text('Yes')),
              ],
            ),
            Container(
              height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20),
            color: Colors.red,
            ),
            Container(
              height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20),
            color: Colors.green,
            ),
            Container(
              height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20),
            color: Colors.blue,
            )
          ],
        )
    );
  }
}