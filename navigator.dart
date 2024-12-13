import 'package:flutter/material.dart';

class NavigatorTeste extends StatelessWidget {
  const NavigatorTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
          },
          child: const Text('Vai para a DetailsScreen'),

        )
      )
    );
      
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsSCreen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Vá para a HomeScreen'),
      ),
    )
    );
  }
}
