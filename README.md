# String Calculator

A Dart implementation of the String Calculator that parses and sums numbers from a string with support for custom delimiters.

## Features

- Returns 0 for empty strings
- Sums comma-separated numbers
- Supports newline characters as delimiters
- Supports custom delimiters (format: `//[delimiter]\n[numbers]`)
- Throws exceptions for negative numbers with detailed error messages


## Testing

```dart
dart test string_calculator.test.dart
```
