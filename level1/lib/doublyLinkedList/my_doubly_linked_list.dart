extension NodeUtils<T> on DouLinLisNode<T>? {
  void printAll() {
    var current = this;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
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
