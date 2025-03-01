import 'dart:math';

import 'package:dk_mixed/afterTrainPage.dart';
import 'package:dk_mixed/main.dart';
import 'package:dk_mixed/widgets/statusform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('afterTrainPage Widget test', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: AfterTrainPage(),
      ),
    ));

    //finding widgets
    final findQuestion =
        find.text('Wie würdest du deine Leistung heute einschätzen?');
  
    final findSlider = find.byType(Slider);

    //expect
    expect(findQuestion, findsOneWidget);
    expect(findSlider, findsOneWidget);
  });
}
