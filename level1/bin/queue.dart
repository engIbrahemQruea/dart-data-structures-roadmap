import 'dart:collection';

import 'package:level1/my_queue.dart';

void main() {
  MyQueue<int> queue = MyQueue<int>();
  MyQueue<int> queue1 = MyQueue<int>();

  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.enqueue(40);
  queue.enqueue(50);

  queue.printElement();

  queue1.enqueue(1);
  queue1.enqueue(2);
  queue1.enqueue(3);
  queue1.enqueue(4);
  queue1.enqueue(5);

  queue1.printElement();

  queue.swapWith(queue1);
  queue1.printElement();
  queue.printElement();

  // print("Length: ${queue.length}");
  // print("Front: ${queue.dequeue()}");
  //print("Back: ${queue.b}");

  Queue<int> queue2 = Queue<int>();
  queue2.add(1);
  queue2.add(2);
  queue2.add(3);
  queue2.add(4);
  queue2.add(5);

  // print("Length: ${queue2.length}");
  // print("Front: ${queue2.first}");
  // print("Back: ${queue2.last}");
  // print(queue2.toList());
}
