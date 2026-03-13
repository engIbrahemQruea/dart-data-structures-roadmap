import 'package:level1/my_stack.dart';

void main() {
  var stack = MyStackOptimazeToShrinking<int>();

  for (int i = 0; i < 10; i++) {
    stack.push(i);
  }

  print("Size: ${stack.size}");
  print("Capacity: ${stack.capacity}");

  for (int i = 0; i < 8; i++) {
    stack.pop();
  }

  print("After pop:");
  print("Size: ${stack.size}");
  print("Capacity: ${stack.capacity}");
}
