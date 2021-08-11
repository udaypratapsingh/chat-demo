// This is a basic Flutter widget test.
import 'package:chatdemo/modules/login/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Login test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));
    await tester.pumpAndSettle(Duration(seconds: 3));
    // Verify that our counter starts at 0.
    expect(find.byType(Container), findsNWidgets(4));
  });
}
