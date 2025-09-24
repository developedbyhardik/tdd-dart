int StringCalculator(String input) {
  String delimiter = ',';
  if (input.isEmpty) {
    return 0;
  }
  return input.split(delimiter).map(int.parse).reduce((acc, curr) => acc + curr);
}