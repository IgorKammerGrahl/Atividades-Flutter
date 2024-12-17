import 'package:flutter/material.dart';

class gridImagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grade de Imagens com Legenda'),
          centerTitle: true,
        ),
        body: ImageGrid(),
      ),
    );
  }
}

class ImageGrid extends StatelessWidget {
  final List<String> captions = [
    'Flutter 1',
    'Flutter 2',
    'Flutter 3',
    'Flutter 4',
    'Flutter 5',
    'Flutter 6',
    'Flutter 7',
    'Flutter 8',
    'Flutter 9',
    'Flutter 10',
    'Flutter 11',
    'Flutter 12',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, 
          crossAxisSpacing: 8, 
          mainAxisSpacing: 8, 
          childAspectRatio: 0.75, 
        ),
        itemCount: captions.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 50, 
              ),
              SizedBox(height: 8), 
              Text(
                captions[index],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
