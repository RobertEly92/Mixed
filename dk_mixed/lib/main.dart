import 'package:flutter/material.dart';

void main() {
  runApp(MainApp(
    title: '',
  ));
}

class MainApp extends StatelessWidget {
  MainApp({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
