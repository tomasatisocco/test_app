import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing_app/main.dart';

void main() {
  group("Test counter widget", (){
    testWidgets('Test increment Counter Widget', (WidgetTester tester) async {
    //setup
    await tester.pumpWidget(const MyApp());
    //do
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    //test
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Test decrement Counter Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('-1'), findsOneWidget);
  });
  });
}
