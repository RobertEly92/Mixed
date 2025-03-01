import 'package:flutter/material.dart';

class BeforeTrainPage extends StatefulWidget {
  const BeforeTrainPage({super.key});

  @override
  State<BeforeTrainPage> createState() => _BeforeTrainPageState();
}

class _BeforeTrainPageState extends State<BeforeTrainPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Text('Wie gehts dir heute?'),
            Row(children: [
              const Text('gesundheitliche Verfassung:'),
              Slider(
                  value: 0,
                  onChanged: (value) {
                    setState(() {});
                  })
            ]),
            Row(children: [
              const Text('körperliche Verfassung:'),
              Slider(
                  value: 0,
                  onChanged: (value) {
                    setState(() {});
                  })
            ]),
            Row(children: [
              const Text('overall Verfassung:'),
              Slider(
                  value: 0,
                  onChanged: (value) {
                    setState(() {});
                  })
            ]),
            TextButton(
              onPressed: () {},
              key: const Key("btnSubmit"),
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
    ;
  }
}
