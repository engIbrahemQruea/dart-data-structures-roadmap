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

  DouLinLisNode<T>? insertAtEnd(T value) {
    final newNode = DouLinLisNode<T>(value, next: null);
    if (this == null) return newNode;
    var lastNode = this;
    while (lastNode?.next != null) {
      lastNode = lastNode?.next;
    }
    newNode.prev = lastNode;
    lastNode?.next = newNode;
    return this;
  }

  DouLinLisNode<T>? insertAtEndModern(T value) {
    if (this == null) return DouLinLisNode<T>(value);

    var last = this;
    while (last?.next != null) {
      last = last?.next;
    }

    last?.next = DouLinLisNode<T>(value)..prev = last;

    return this;
  }

  DouLinLisNode<T>? deleteNode(DouLinLisNode<T>? nodeDelete) {
    var current = this;
    if (current == null || nodeDelete == null) return null;
    if (current == nodeDelete) return current = nodeDelete.next;

    if (nodeDelete.next != null) {
      nodeDelete.next?.prev = nodeDelete.prev;
    }
    if (nodeDelete.prev != null) {
      nodeDelete.prev?.next = nodeDelete.next;
    }
    nodeDelete.next = null;
    nodeDelete.prev = null;
    return this;
  }

  DouLinLisNode<T>? deleteNodeModern(DouLinLisNode<T>? node) {
    if (node == null || this == null) return this;

    // ربط الجيران ببعضهم
    node.prev?.next = node.next;
    node.next?.prev = node.prev;

    // إذا كانت العقدة هي الرأس، أرجع الرأس الجديد
    if (this == node) return node.next;

    // تصفير روابط العقدة المحذوفة (اختياري للأمان)
    node
      ..next = null
      ..prev = null;

    return this;
  }

  DouLinLisNode<T>? deleteFirstNode() {
    if (this == null) return null;

    final nextNode = this!.next;

    // تصفير روابط العقدة المحذوفة لضمان تنظيف الذاكرة
    this!
      ..next = null
      ..prev = null;

    // تصفير الرابط الخلفي للرأس الجديد
    nextNode?.prev = null;

    return nextNode;
  }
}
