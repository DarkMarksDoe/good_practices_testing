import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:good_practices_testing/app/UI/home_page.dart';
import 'package:good_practices_testing/app/models/cat.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'widget_test.mocks.dart';

// Annotation which generates the cat.mocks.dart library and the MockCat class.
@GenerateMocks([
  Cat
], customMocks: [
  MockSpec<Cat>(as: #MockCatRelaxed, returnNullOnMissingStub: true),
])
void main() {
  final cat = MockCat();

  group('description', () {
    testWidgets(
        'GIVEN cat is alive '
        'WHEN user taps on a button '
        'THEN dialog is shown', (tester) async {
      // given
      when(cat.isAlive).thenReturn(true);

      // when
      await tester.pumpWidget(MaterialApp(home: HomePage(cat: cat)));
      await tester.tap(find.byType(TextButton));
      await tester.pump();

      // expect
      expect(find.text('Meow'), findsOneWidget);
    });
    testWidgets(
        'GIVEN cat is alive '
        'WHEN user taps on a button '
        'THEN dialog is shown', (tester) async {
      // given
      when(cat.isAlive).thenReturn(true);

      // when
      await tester.pumpWidget(MaterialApp(home: HomePage(cat: cat)));
      await tester.tap(find.byType(TextButton));
      await tester.pump();

      // expect
      expect(find.text('Meow'), findsOneWidget);
    });
  });

  test(
      'GIVEN cat.sound is Meow'
      'WHEN function sound is called'
      'THEN Meow is shown', () {
    // GIVEN && Stub a method before interacting with it.
    final cat = MockCat();
    when(cat.sound()).thenReturn('Meow');

    // WHEN && Interact with the mock object.
    cat.sound();

    // Verify the interaction.
    verify(cat.sound());
  });
}
