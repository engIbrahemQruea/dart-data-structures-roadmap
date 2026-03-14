extension NodeUtils<T> on Node<T>? {
  void printAll() {
    var current = this;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);

  @override
  String toString() => '$value';
}
