import 'dart:io';

extension NodeUtils<T> on DouLinLisNode<T>? {
  void printAll() {
    var current = this;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }

  void printNodeDetails(DouLinLisNode<T> head) {
    final prevVal = head.prev?.value?.toString() ?? 'null';
    final nextVal = head.next?.value?.toString() ?? 'null';

    print("$prevVal <--> ${head.value} <--> $nextVal");
  }

  void printListDetails() {
    print('\n');
    var current = this;
    while (current != null) {
      printNodeDetails(current);
      current = current.next;
    }
  }

  void printList() {
    stdout.write('NULL <--> ');
    var head = this;
    while (head != null) {
      stdout.write('${head.value} <--> ');
      head = head.next;
    }
    stdout.write('NULL');
  }
}

class DouLinLisNode<T> {
  T value;
  DouLinLisNode<T>? next;
  DouLinLisNode<T>? prev;

  DouLinLisNode(this.value, {this.next, this.prev});

  @override
  String toString() => '$value';
}
