void main() {
  // التهيئة
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final List<int> numbers1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  numbers.remove(5);
  print("After removing 5: ${numbers.join(', ')}");

  numbers.removeAt(0);
  print("After removing first element: ${numbers.join(', ')}");

  numbers.removeWhere((n) => n % 2 != 0);
  print("After removing all even numbers: ${numbers.join(', ')}");

  numbers1.retainWhere((n) => n % 2 == 0);
  print("After retaining all even numbers: ${numbers.join(', ')}");

  numbers.clear();
  print("After clearing the list, length: ${numbers.length}");
}