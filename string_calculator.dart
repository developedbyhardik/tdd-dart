int StringCalculator(String input) {
  String delimiter = ',';
  if (input.isEmpty) {
    return 0;
  }

  if (input.startsWith('//')) {
    delimiter = input.split('\n')[0].substring(2);
    input = input.split('\n')[1];
  }

  final negativeNumbers = input.split(RegExp('[\n${delimiter}]')).where((e) => int.parse(e) < 0).toList();
  
  if (negativeNumbers.isNotEmpty) {
    throw ArgumentError('negatives not allowed: ${negativeNumbers.join(', ')}');
  }

  return input.split(RegExp('[\n${delimiter}]')).map(int.parse).reduce((acc, curr) => acc + curr);
}