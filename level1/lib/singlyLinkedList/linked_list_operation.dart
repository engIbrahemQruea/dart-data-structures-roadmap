import 'package:level1/singlyLinkedList/my_singly_linked_list.dart';

extension LinkedListOperations<T> on Node<T>? {
  Node<T> insertAtBeginning(T value) {
    return Node<T>(value, this);
  }

  Node<T>? find(T value) {
    Node<T>? current = this;
    while (current != null) {
      if (current.value == value) {
        return current;
      }
      current = current.next;
    }
    return null;
  }
}

void isFind(Node<int> head, int value) {
  if (head.find(value) != null) {
    print('Node Found :-)');
  } else {
    print('Node Not Found :-(');
  }
}
