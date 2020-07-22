import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/main.dart';

void main() {
  test("String should be reversed", () {
    String initial = "Hello";
    String reverse = reverseString(initial);
    expect(reverse, 'olleH');
  });
}
