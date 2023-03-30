import 'package:flutter_test/flutter_test.dart';

import 'robots/robot.dart';

void main() {
  testWidgets('main ...', (tester) async {
    final r = Robot(tester: tester);

    await r.pumpApp();
    r.homePage.findLayout();

    await r.homePage.enterText();

    await r.homePage.tapSubmitButton();
  });
}
