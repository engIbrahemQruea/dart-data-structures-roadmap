import 'dart:math' as math;

import 'package:collection/collection.dart'; // استدعاء الحزمة

void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final int sum = numbers.fold(0, (prev, curr) => prev + curr);
  print("Sum: $sum");

  final double average = sum / numbers.length;
  print("Average: $average");

  final int min = numbers.reduce(math.min);
  print("Minimum: $min");

  final int max = numbers.reduce(math.max);
  print("Maximum: $max");

  final int count = numbers.length;
  print("Count: $count");



// Using Package:collection
  print("Sum: ${numbers.sum}");
  print("Average: ${numbers.average}");
  print("Minimum: ${numbers.min}");
  print("Maximum: ${numbers.max}");

  print("Count (numbers > 5): ${numbers.where((n) => n > 5).length}");
}
