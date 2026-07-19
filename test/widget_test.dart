// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:methods/core/method.dart';

void main() {
  test("test parsing", () {
    final res1 = parsePlaceNotation("x16x16x16,12");
    print(res1);
    final res2 = parsePlaceNotation("3,1.7");
    print(res2);
  });
}
