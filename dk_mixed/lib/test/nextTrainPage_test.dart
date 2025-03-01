import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    "next Training Page testen with expample date",
    (tester) async {
      String datum = '01.01.2025';
      //building widget
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: NextTrainPage(datum),
        ),
      ));

      //finding widgets
      final infoFinder = find.text('Nächstes Training ist am:');
      final dateFinder = find.text(datum);

      //expect
      expect(infoFinder, findsOneWidget);
      expect(dateFinder, findsOneWidget);
    },
  );
}
