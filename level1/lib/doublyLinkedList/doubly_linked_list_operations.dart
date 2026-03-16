import 'package:level1/doublyLinkedList/my_doubly_linked_list.dart';

extension DoublyLinkedListOperations<T> on DouLinLisNode<T>? {
  DouLinLisNode<T>? insertAtBeginning(T value) {
    final newNode = DouLinLisNode<T>(value, next: this);
    if (this != null) {
      this!.prev = newNode;
    }
    return newNode;
  }

  DouLinLisNode<T>? findWhere(bool Function(T value) test) {
    var current = this;
    while (current != null) {
      if (test(current.value)) return current;

      current = current.next;
    }
    return null;
  }

  DouLinLisNode<T>? insertAfter(DouLinLisNode<T>? nodeInsertAfter, T value) {
    if (nodeInsertAfter == null) return this;
    final newNode = DouLinLisNode<T>(
      value,
      next: nodeInsertAfter.next,
      prev: nodeInsertAfter,
    );
    nodeInsertAfter.next?.prev = newNode;
    nodeInsertAfter.next = newNode;
    return this;
  }
}
