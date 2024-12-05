import 'package:flutter/material.dart';
import 'package:flutter_atividades/atv1.dart';
import 'package:flutter_atividades/atv2.dart';
import 'package:flutter_atividades/atv3.dart';
import 'package:flutter_atividades/atv4.dart';
import 'package:flutter_atividades/atv5.dart';
import 'package:flutter_atividades/atv6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Atv6() //Mude o numero da atividade para poder rodar a classe com a respectiva atividade
    );
  }
}

