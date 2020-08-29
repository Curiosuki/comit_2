// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_starbucks/repository/starbuck_repository.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_starbucks/main.dart';

void main() {

  test('회원가입 테스트', () async {

    final repository = StarbucksRepository();
    final token = await repository.signUp("kim1", "kim2", "kim3", "01096470713",'123qwerl!!', '123qwerl!!');

    print('테스트 성공 : $token');

  });


  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
