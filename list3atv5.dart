import 'package:flutter/material.dart';

class animais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animais - PageView'),
          centerTitle: true,
        ),
        body: AnimalPageView(),
      ),
    );
  }
}

class AnimalPageView extends StatelessWidget {
  final List<Map<String, String>> animals = [
    {
      'name': 'Leão',
      'description': 'O leão é conhecido como o rei da selva. (Conforme dito no filme "O Rei Leão")',
      'image': 'https://via.placeholder.com/150/FFD700/000000?text=Leão',
    },
    {
      'name': 'Tigre',
      'description': 'O tigre é um grande felino com listras pretas.',
      'image': 'https://via.placeholder.com/150/FF6347/000000?text=Tigre',
    },
    {
      'name': 'Elefante',
      'description': 'O elefante é o maior animal terrestre.',
      'image': 'https://via.placeholder.com/150/40E0D0/000000?text=Elefante',
    },
    {
      'name': 'Águia',
      'description': 'A águia é conhecida pela sua visão aguçada.',
      'image': 'https://via.placeholder.com/150/6A5ACD/FFFFFF?text=Águia',
    },
    {
      'name': 'Cavalo',
      'description': 'cavalo.',
      'image': 'https://via.placeholder.com/150/8B4513/FFFFFF?text=Cavalo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: animals.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                animals[index]['image']!,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                animals[index]['name']!,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 10),
              Text(
                animals[index]['description']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ],
          ),
        );
      },
    );
  }
}
