void main() {
  final List<int> numbers = [1, 2, 3, 4, 5];

  print("Number of items in the list: ${numbers.length}");

  print("\nDisplaying list elements using a for loop:");
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  print("\nDisplaying list elements using a for-in loop:");
  for (final number in numbers) {
    print(number);
  }

  print("\nDisplaying list elements using List.forEach:");
  numbers.forEach((number) {
    print(number);
  });

  // numbers.forEach(print);
}
