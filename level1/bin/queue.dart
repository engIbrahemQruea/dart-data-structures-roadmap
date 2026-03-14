import 'dart:collection';
import 'dart:math';

void main() {
  // MyQueue<int> queue = MyQueue<int>();

  // queue.enqueue(1);
  // queue.enqueue(2);
  // queue.enqueue(3);
  // queue.enqueue(4);
  // queue.enqueue(5);

  // print("Length: ${queue.length}");
  // print("Front: ${queue.dequeue()}");
  //print("Back: ${queue.b}");

  final Queue<int> queue2 = Queue<int>();
  queue2.add(1);
  queue2.add(2);
  queue2.add(3);
  queue2.add(4);
  queue2.add(5);

  print("Length: ${queue2.length}");
  print("Front: ${queue2.first}");
  print("Back: ${queue2.last}");
  print(queue2.toList());
}
