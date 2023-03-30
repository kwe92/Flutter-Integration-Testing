import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test_app/main.dart';

import 'home_page_robot.dart';

class Robot {
  final WidgetTester tester;
  final HomePageRobot homePage;
  Robot({required this.tester}) : homePage = HomePageRobot(tester: tester);

  Future<void> pumpApp() async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));

    await tester.pumpAndSettle();
  }
}
