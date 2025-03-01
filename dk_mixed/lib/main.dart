import 'package:dk_mixed/beforeTrainPage.dart';
import 'package:dk_mixed/widgets/statusform.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp(
    title: '',
  ));
}
class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.title});
    final String title;

  @override
  Widget build(BuildContext context) {
    return BeforeTrainPage(title: title);
  }
}



