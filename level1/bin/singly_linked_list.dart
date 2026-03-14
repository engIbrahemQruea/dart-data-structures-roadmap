import 'dart:ffi';

import 'package:level1/singlyLinkedList/my_singly_linked_list.dart';

void main() {
  Node<int> head;
  Node<int>? node1 = null;
  Node<int>? node2 = null;
  Node<int>? node3 = null;

  // node1 = Node(1);
  // node2 = Node(2);
  // node3 = Node(3);

  // node1.next = node2;
  // node2.next = node3;
  // node3.next = null;

  node3 = Node(3, null);
  node2 = Node(2, node3);
  node1 = Node(1, node2);

  head = node1;
  head.printAll();
}
