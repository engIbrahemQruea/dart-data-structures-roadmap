import 'package:level1/doublyLinkedList/doubly_linked_list_operations.dart';
import 'package:level1/doublyLinkedList/my_doubly_linked_list.dart';

void main() {
  DouLinLisNode<int>? head = null;

  /// Doubly Linked List Implementation
  // DouLinLisNode<int>? node1;
  // DouLinLisNode<int>? node2;
  // DouLinLisNode<int>? node3;

  // node3 = DouLinLisNode(3, next: null, prev: node2);
  // node2 = DouLinLisNode(2, next: node3, prev: node1);
  // node1 = DouLinLisNode(1, next: node2, prev: null);

  // head = node1;
  // head.printAll();

  /// Operation Insert At Beginning on Doubly Linked List
  head = head.insertAtBeginning(1);
  head = head.insertAtBeginning(2);
  head = head.insertAtBeginning(3);
  head = head.insertAtBeginning(4);
  head = head.insertAtBeginning(5);
  print("Linked List Contenet:\n");
  head.printList();
  head.printListDetails();

  /// Operation Find Where on Doubly Linked List
  print("Linked List Contenet:\n");
  head.printList();
  print('');
  if (head.findWhere((value) => value == 3) != null) {
    print('Node Found :-)');
  } else {
    print('Node Not Found :-(');
  }

  print("Linked List Contenet:\n");
  DouLinLisNode<int>? finNode = head.findWhere((value) => value == 4);
  head = head.insertAfter(finNode, 400);
  head.printList();
  head.printListDetails();

  /// Operation Insert At End on Doubly Linked List
  print("Linked List Content InsertAtEnd:\n");
  head = head.insertAtEnd(500);
  //head = head.insertAtEndModern(500);
  head.printList();
  head.printListDetails();

  /// Operation Delete Node on Doubly Linked List
  print("Linked List Content Operations - Delete Node:\n");
  DouLinLisNode<int>? findNode = head.findWhere((value) => value == 500);
  head = head.deleteNode(findNode);
  findNode = head.findWhere((value) => value == 400);
  head = head.deleteNode(findNode);
  head.printList();
  head.printListDetails();

  /// Operation Delete First Node on Doubly Linked List

  head = head.deleteFirstNode();
  head.printList();
  print('');
  head.printListDetails();
}
