import 'dart:math';

import 'package:dk_mixed/main.dart';
import 'package:dk_mixed/widgets/statusform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('test MainApp', (tester) async{
    //building widget
    await tester.pumpWidget( MainApp(title: 'Hans Wurst',));
    //finding widget
    final titleFinder = find.text('Hans Wurst');


  //expect
  expect(titleFinder, findsOneWidget);

  });

  testWidgets('test Stimmungsformular', (tester) async{
    //building widget
    await tester.pumpWidget(StatusFormWidget());

    //finding widgets
    final formTitle = find.text('Wie gehts dir heute?');
    final healthQuestion = find.text('gesundheitliche Verfassung:');
    final bodyQuestion = find.text('körperliche Verfassung:');
    final overallQuestion = find.text('overall Verfassung:');

    final sliders = find.byType(Slider);


    //expect
    expect(formTitle, findsOneWidget);
    expect(healthQuestion, findsOneWidget);
    expect(bodyQuestion, findsOneWidget);
    expect(overallQuestion, findsOneWidget);
    expect(sliders, findsExactly(3));
  });
}