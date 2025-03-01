import 'dart:math';

import 'package:dk_mixed/beforeTrainPage.dart';
import 'package:dk_mixed/main.dart';
import 'package:dk_mixed/widgets/statusform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('test beforeTrainPage', (tester) async{
    //building widget
    await tester.pumpWidget( BeforeTrainPage(title: 'Hans Wurst',));
    //finding widget
    final titleFinder = find.text('Hans Wurst');


  //expect
  expect(titleFinder, findsOneWidget);

  });

  testWidgets('test Stimmungsformular on MainApp', (tester) async{
    //building widget
    await tester.pumpWidget(BeforeTrainPage(title: 'Hans Wurst',));

    //finding widgets
    final formTitle = find.text('Wie gehts dir heute?');
    final healthQuestion = find.text('gesundheitliche Verfassung:');
    final bodyQuestion = find.text('körperliche Verfassung:');
    final overallQuestion = find.text('overall Verfassung:');

    final submitButton = find.byKey(const Key('btnSubmit'));

    final sliders = find.byType(Slider);


    //expect
    expect(formTitle, findsOneWidget);
    expect(healthQuestion, findsOneWidget);
    expect(bodyQuestion, findsOneWidget);
    expect(overallQuestion, findsOneWidget);
    expect(sliders, findsExactly(3));
    expect(submitButton, findsOne);
  });
}