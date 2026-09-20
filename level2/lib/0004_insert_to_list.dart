void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  numbers.add(11);
  print("After adding 11: ${numbers.join(', ')}");

  numbers.insert(0, 0);
  print("After inserting 0 at the beginning: ${numbers.join(', ')}");

  numbers.insertAll(5, [55, 56]);
  print("After inserting 55 and 56 at index 5: ${numbers.join(', ')}");
}
