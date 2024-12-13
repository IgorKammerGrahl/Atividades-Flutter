import 'package:flutter/material.dart';

class AlertDialogExemplo extends StatelessWidget {
  const AlertDialogExemplo({super.key});

  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Você deseja excluir este item?'),
                Text('Clique em "Sim" para confirmar.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Não'),
              onPressed: () {
                Navigator.of(context).pop(); 
              },
            ),
            TextButton(
              child: const Text('Sim'),
              onPressed: () {
                Navigator.of(context).pop(); 
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Item excluído com sucesso'),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text('Mostrar AlertDialog'),
        ),
      ),
    );
  }
}
