import 'package:flutter_test/flutter_test.dart';

import 'package:growmatch_mobile/main.dart';

void main() {
  testWidgets('GrowMatchApp renders bootstrap screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const GrowMatchApp());

    expect(find.text('GrowMatch'), findsOneWidget);
    expect(find.text('GrowMatch Mobile'), findsOneWidget);
  });
}
