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

  group('new line cases', () {
    test('test 1: should return the sum of the numbers in the string', () {
      expect(StringCalculator('1\n2,3'), equals(6));
    });

    test('test 2: should return the sum of the numbers in the string', () {
      expect(StringCalculator('1\n2\n3,4\n5'), equals(15));
    });
  });
}
