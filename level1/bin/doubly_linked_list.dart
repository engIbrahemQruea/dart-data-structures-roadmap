import 'package:level1/doublyLinkedList/my_doubly_linked_list.dart';

void main() {
  DouLinLisNode<int>? head;

  DouLinLisNode<int>? node1;
  DouLinLisNode<int>? node2;
  DouLinLisNode<int>? node3;

  node3 = DouLinLisNode(3, next: null, prev: node2);
  node2 = DouLinLisNode(2, next: node3, prev: node1);
  node1 = DouLinLisNode(1, next: node2, prev: null);

  head = node1;
  head.printAll();
}
