import 'package:level1/singlyLinkedList/my_singly_linked_list.dart';

extension LinkedListOperations<T> on Node<T>? {
  Node<T> insertAtBeginning(T value) {
    return Node<T>(value, this);
  }
}



