import 'package:flutter/material.dart';

class listaProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inventário de Produtos'),
          centerTitle: true,
        ),
        body: ProductInventory(),
      ),
    );
  }
}

class ProductInventory extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'produto': 'Notebook', 'quantidade': 10, 'preco': 3500.00},
    {'produto': 'Mouse', 'quantidade': 25, 'preco': 50.00},
    {'produto': 'Teclado', 'quantidade': 15, 'preco': 120.00},
    {'produto': 'Monitor', 'quantidade': 8, 'preco': 780.00},
    {'produto': 'Cadeira Gamer', 'quantidade': 5, 'preco': 950.00},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columnSpacing: 30,
        columns: [
          DataColumn(
              label: Text(
            'Produto',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
          DataColumn(
              label: Text(
            'Quantidade',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
          DataColumn(
              label: Text(
            'Preço',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
        ],
        rows: products
            .map(
              (product) => DataRow(
                cells: [
                  DataCell(Text(product['produto'])),
                  DataCell(Text(product['quantidade'].toString())),
                  DataCell(Text('R\$ ${product['preco'].toStringAsFixed(2)}')),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
