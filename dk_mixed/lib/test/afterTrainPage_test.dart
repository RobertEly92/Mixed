import 'dart:math';

import 'package:dk_mixed/main.dart';
import 'package:dk_mixed/widgets/statusform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('afterTrainPage Widget test', (tester)async{
    await tester.pumpWidget(AfterTrainPage((title: 'Hans Wurst',)));

    //finding widgets
    final question = find.text('Wie würdest du deine Leistung heute einschätzen?');
    final slider = find.byType(Slider);

    //expect
    expect(question, findsOneWidget);
    expect(slider, findsOneWidget);
  });
}