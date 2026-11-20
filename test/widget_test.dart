import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:growmatch_mobile/main.dart';

void main() {
  testWidgets('Bottom navigation switches across all 5 main module tabs', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const GrowMatchApp());

    expect(find.byType(NavigationBar), findsOneWidget);

    await tester.tap(find.text('Catalog'));
    await tester.pumpAndSettle();
    expect(find.text('Plant Catalog'), findsWidgets);

    await tester.tap(find.text('Recommend'));
    await tester.pumpAndSettle();
    expect(find.text('Plant Recommendation'), findsWidgets);

    await tester.tap(find.text('Garden'));
    await tester.pumpAndSettle();
    expect(find.text('My Garden'), findsWidgets);

    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();
    expect(find.text('Profile'), findsWidgets);
  });

  testWidgets('Drawer navigates to secondary module pages', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const GrowMatchApp());

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    final drawerScrollable = find.descendant(
      of: find.byType(Drawer),
      matching: find.byType(Scrollable),
    );

    final reviewsItem = find.descendant(
      of: find.byType(Drawer),
      matching: find.text('Plant Reviews'),
    );
    await tester.scrollUntilVisible(
      reviewsItem,
      200,
      scrollable: drawerScrollable,
    );
    await tester.tap(reviewsItem);
    await tester.pumpAndSettle();
    expect(find.text('Plant Reviews'), findsWidgets);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();

    final careLogItem = find.descendant(
      of: find.byType(Drawer),
      matching: find.text('Care Log'),
    );
    await tester.scrollUntilVisible(
      careLogItem,
      200,
      scrollable: drawerScrollable,
    );
    await tester.tap(careLogItem);
    await tester.pumpAndSettle();
    expect(find.text('Care Log'), findsWidgets);
  });
}
