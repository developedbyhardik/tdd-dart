import 'package:test/test.dart';
import 'string_calculator.dart';

void main() {
  group('normal cases', () {
    test('should return 0 if the string is empty', () {
      expect(StringCalculator(''), equals(0));
    });

    test('should return the sum of the numbers in the string', () {
      expect(StringCalculator('1,2,3'), equals(6));
    });
  });
}
