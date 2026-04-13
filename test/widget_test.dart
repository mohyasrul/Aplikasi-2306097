// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aplikasi_2306097/main.dart';

void main() {
  testWidgets('Plant store can increment quantity', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PlantStoreApp());

    expect(find.text('Toko TanamanKu'), findsOneWidget);
    expect(find.text('Total Item: 0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add).first);
    await tester.pump();

    expect(find.text('Total Item: 1'), findsOneWidget);
  });
}
