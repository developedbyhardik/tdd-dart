int StringCalculator(String input) {
  String delimiter = ',';
  if (input.isEmpty) {
    return 0;
  }

  if (input.startsWith('//')) {
    delimiter = input.split('\n')[0].substring(2);
    input = input.split('\n')[1];
  }

  return input.split(RegExp('[\n${delimiter}]')).map(int.parse).reduce((acc, curr) => acc + curr);
}