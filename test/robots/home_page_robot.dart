import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class HomePageRobot {
  final WidgetTester tester;
  const HomePageRobot({required this.tester});

  void findLayout() async {
    // Finders
    final input = find.byType(TextFormField);
    expect(input, findsOneWidget);

    final button = find.byType(ElevatedButton);
    expect(button, findsOneWidget);
  }

  Future<void> enterText() async {
    final input = find.byType(TextFormField);
    await tester.enterText(input, 'You and I are one.');
    await tester.pumpAndSettle();
  }

  Future<void> tapSubmitButton() async {
    final button = find.byType(ElevatedButton);
    await tester.tap(button);
    await tester.pumpAndSettle();
  }
}
