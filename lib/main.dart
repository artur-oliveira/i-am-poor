import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am poor'),
          backgroundColor: Colors.lightGreen[900],
        ),
        body: Builder(
            builder: (context) => Center(
            child: GestureDetector(
              onTap: () {
                _showToast(context);
              },
              child:Image(
                image: AssetImage('assets/coal.png'),
              ),
            )
          ),
        ),
        backgroundColor: Colors.lightGreen[700],
      )
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('O que importa é ser rico de felicidade ❤'),
      action: SnackBarAction(
          label: 'Fechar', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}