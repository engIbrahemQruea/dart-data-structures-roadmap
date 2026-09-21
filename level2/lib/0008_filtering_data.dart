void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final evenNumbers = numbers.where((n) => n % 2 == 0);
  print("Even Numbers: ${evenNumbers.join(', ')}");

  final oddNumbers = numbers.where((n) => n % 2 != 0);
  print("Odd Numbers: ${oddNumbers.join(', ')}");

  final greaterThanFive = numbers.where((n) => n > 5);
  print("Numbers Greater Than 5: ${greaterThanFive.join(', ')}");

  final everySecondNumber = numbers.indexed
      .where((pair) => pair.$1 % 2 == 1) // pair.$1 هو الفهرس، pair.$2 هو العنصر
      .map((pair) => pair.$2);
  print("Every Second Number: ${everySecondNumber.join(', ')}");

  final rangeNumbers = numbers.where((n) => n > 3 && n < 8);
  print("Numbers Between 3 and 8: ${rangeNumbers.join(', ')}");
}
