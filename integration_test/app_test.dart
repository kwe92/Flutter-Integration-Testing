// ignore_for_file: unused_import

import 'package:flutter_test/flutter_test.dart';

import '../test/robots/robot.dart';
import 'package:integration_test/integration_test.dart';
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('main ...', (tester) async {
    final r = Robot(tester: tester);

    await r.pumpApp();

    await _d(2);

    await r.homePage.enterText();

    await _d(3);

    await r.homePage.tapSubmitButton();

    await _d(2);
  });
}

Future<void> _d(int seconds) => Future.delayed(Duration(seconds: seconds));
