import 'package:flutter/material.dart';

class AfterTrainPage extends StatefulWidget {
  const AfterTrainPage({super.key,});

  @override
  State<AfterTrainPage> createState() => _AfterTrainPageState();
}

class _AfterTrainPageState extends State<AfterTrainPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          const Text('Wie würdest du deine Leistung heute einschätzen?'),
          Slider(
              value: 0,
              onChanged: (value) {
                setState(() {});
              })
        ]),
      ),
    );
  }
}
