import 'dart:collection';

// استخدام Mixin لإضافة ميزة "السجل" لأي Queue
mixin Loggable<T> {
  void logAction(String action, T element) {
    print("Action: $action, Element: $element, Time: ${DateTime.now()}");
  }
}

class MyQueue<T> with Loggable<T> {
  final Queue<T> _queue = Queue<T>();

  void enqueue(T element) {
    _queue.addLast(element);
    logAction("ENQUEUE", element);
  }

  T? dequeue() {
    if (_queue.isEmpty) return null;
    T element = _queue.removeFirst();
    logAction("DEQUEUE", element);
    return element;
  }

  int get length => _queue.length;
}