import 'package:dk_mixed/widgets/statusform.dart';
import 'package:flutter/material.dart';

class BeforeTrainPage extends StatelessWidget {
  BeforeTrainPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: StatusFormWidget(),
      ),
    );
  }
}
