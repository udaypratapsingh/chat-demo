// This is a basic Flutter widget test.
import 'package:chatdemo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home page test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));
    await tester.pumpAndSettle(Duration(seconds: 3));
    // Verify that our counter starts at 0.
    expect(find.byType(Column), findsNWidgets(3));
    expect(find.byType(SafeArea), findsNWidgets(1));
  });
}
