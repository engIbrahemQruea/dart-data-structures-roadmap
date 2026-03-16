import 'package:level1/doublyLinkedList/my_doubly_linked_list.dart';

extension DoublyLinkedListOperations<T> on DouLinLisNode<T>? {
  DouLinLisNode<T>? insertAtBeginning(T value) {
    final newNode = DouLinLisNode<T>(value, next: this);
    if (this != null) {
      this!.prev = newNode;
    }
    return newNode;
  }
}
