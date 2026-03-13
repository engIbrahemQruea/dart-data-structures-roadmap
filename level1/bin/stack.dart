import 'package:level1/my_stack.dart';

void main() {
  MyStack<int> stack = MyStack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
MyStack<int> stack2 = MyStack<int>();
  stack2.pushAll([6, 7, 8, 9, 10]);
  stack.swapWith(stack2);
  stack.printElements();
  stack2.swap(stack);
  stack2.printElements();
  // print(stack.size);
  // print(stack.top);
  // print(stack.isEmpty);
  // print(stack.contains(3));
  // print(stack.indexOf(3));
  // print(stack.lastIndexOf(3));
  // stack.printElements();

String txt='{[()]}()';
  print(txt.hasValidBrackets);

}
