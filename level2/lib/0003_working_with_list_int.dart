void main() {
  List<int> numbers = [];

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.add(5);

  // Using the spread operator to create a new list
  final numbers2 = <int>[]
    ..add(1)
    ..add(2)
    ..add(3);

  print("Number of items in the list: ${numbers.length}");

  print(numbers[0]); // 1
  print(numbers[1]); // 2
  print(numbers[2]); // 3
  print(numbers[3]); // 4
  print(numbers[4]); // 5

  print("Changing the value of item 2 of the list to 500:");
  numbers[1] = 500;
  print(numbers[1]); // 500
}
