import 'package:flutter/material.dart';

class Atv6 extends StatelessWidget {
  const Atv6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 6'),
      ),
      body: Center(
        child: Column(
          children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
           child: Text('Texto1'),
            ),
            Divider(
              color: Colors.red,
            thickness: 10,
            indent: 20,
            endIndent: 20,
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Texto2'),
           ),
           Divider(
            color: Colors.red,
            thickness: 10,
            indent: 20,
            endIndent: 20,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Texto3'),
           ),
           Divider(
            color: Colors.red,
            thickness: 10,
            indent: 20,
            endIndent: 20,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Texto4'),
           ),
           Divider(
            color: Colors.red,
            thickness: 10,
            indent: 20,
            endIndent: 20,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Texto5'),
           ),
           Divider(
            color: Colors.red,
            thickness: 10,
            indent: 20,
            endIndent: 20,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Fim da Lista'),
           ),
           Divider(
            color: Colors.red,
            thickness: 10,
            indent: 20,
            endIndent: 20,
           )
          ],
        )
      ),
    );
  }
}
