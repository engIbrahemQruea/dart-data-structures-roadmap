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

  Node<T>? insertAfterNode(Node<T> prevNode, T value) {
    final newNode = Node<T>(value, prevNode.next);
    prevNode.next = newNode;
    return newNode;
  }

  Node<T>? insertAtEnd(T value) {
    final newNode = Node<T>(value, null);
    if (this == null) {
      return newNode;
    } else {
      Node<T>? lastNode = this;
      while (lastNode!.next != null) {
        lastNode = lastNode.next;
      }
      lastNode.next = newNode;
      return this;
    }
  }

  Node<T>? deleteNode(T value) {
    var head = this;
    if (head == null) return null;

    // حالة خاصة: إذا كان الحذف في أول عقدة
    if (head.value == value) {
      return head.next; // الـ Head الجديد هو العنصر الثاني
    }

    Node<T>? current = head;
    // البحث عن العنصر مع الاحتفاظ بالـ current ليكون هو الـ prev
    while (current?.next != null && current?.next?.value != value) {
      current = current?.next;
    }

    // إذا وجدناه، نتخطى العقدة المطلوبة
    if (current?.next != null) {
      current?.next = current?.next?.next;
    }

    return head;
  }

  Node<T>? deleteFirstNode() {
    if (this == null) return null;
    return this!.next;
  }

  Node<T>? deleteLastNode() {
    if (this == null || this?.next == null) return null;

    var current = this;
    while (current?.next?.next != null) {
      current = current?.next;
    }
    current?.next = null;
    return this;
  }
}

void isFind(Node<int> head, int value) {
  if (head.find(value) != null) {
    print('Node Found :-)');
  } else {
    print('Node Not Found :-(');
  }
}

void insertAfterNode(Node<int>? head, int valueInsertAfter, int value) {
  Node<int>? prevNode = head.find(valueInsertAfter);
  if (prevNode != null) {
    head = head.insertAfterNode(prevNode, value);
  } else {
    print('Node Not Found :-(');
  }
}
