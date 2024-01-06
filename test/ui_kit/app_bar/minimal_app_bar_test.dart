import 'package:clutter/ui_kit/app_bar/minimal_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  _minimalAppBarText();
}

_minimalAppBarText() {
  testWidgets(
    'MinimalAppBar Test',
    (tester) async {
      const key = ValueKey('minimalAppBarKey');
      const title = 'Title';

      Widget appBar = const MaterialApp(
        home: MinimalAppBar(
          title,
          key: key,
        ),
      );
      await tester.pumpWidget(appBar);
      await tester.pumpAndSettle();

      expect(find.descendant(of: find.byKey(key), matching: find.text(title)),
          findsOneWidget);
      await tester.pumpAndSettle();
    },
  );
}
