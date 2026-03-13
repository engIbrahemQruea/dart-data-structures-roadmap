extension StackUtils<T> on MyStack<T> {
  void pushAll(Iterable<T> items) {
    for (var item in items) push(item);
  }

  void printElements() =>
      print("Stack elements (Top to Bottom): ${_storage.reversed.toList()}");
}

extension BracketChecker on String {
  bool get hasValidBrackets => isBalanced(this);
}

bool isBalanced(String text) {
  // 1. استخدام الكلاس الخاص بك بدلاً من القائمة العادية
  final stack = MyStack<String>();

  final pairs = {')': '(', '}': '{', ']': '['};

  for (var i = 0; i < text.length; i++) {
    var char = text[i];

    if (char == '(' || char == '{' || char == '[') {
      stack.push(char);
    } else if (pairs.containsKey(char)) {
      if (stack.isEmpty) return false;

      var top = stack.pop();

      if (top != pairs[char]) {
        return false;
      }
    }
  }

  // في النهاية نتحقق من فراغ الـ Stack باستخدام دالتك
  return stack.isEmpty;
}

class MinStack<T extends Comparable> {
  // الكلاس الأساسي الذي كتبته أنت (نستخدمه هنا للتخزين)
  final MyStack<T> _mainStack = MyStack<T>();

  // الـ Stack المساعد الذي اقترحته أنا لحفظ "تاريخ" القيم الصغرى
  final MyStack<T> _minStack = MyStack<T>();

  // إضافة عنصر
  void push(T element) {
    _mainStack.push(element);

    // إذا كان الـ Stack المساعد فارغاً أو العنصر الجديد أصغر من أو يساوي الحالي
    if (_minStack.isEmpty || element.compareTo(_minStack.top!) <= 0) {
      _minStack.push(element);
    }
  }

  // حذف عنصر
  T? pop() {
    T? removedElement = _mainStack.pop();

    // إذا كان العنصر المحذوف هو نفسه أصغر عنصر حالي، نحذفه من ستوك الصغرى أيضاً
    if (removedElement != null && removedElement == _minStack.top) {
      _minStack.pop();
    }
    return removedElement;
  }

  // جلب أصغر عنصر في زمن O(1)
  T? get min => _minStack.top;

  // جلب العنصر العلوي
  T? get top => _mainStack.top;

  bool get isEmpty => _mainStack.isEmpty;
}


class MyStackOptimazeToShrinking<T> {
  List<T?> _storage;
  int _size = 0;

  MyStackOptimazeToShrinking([int capacity = 4]) : _storage = List.filled(capacity, null);

  int get size => _size;

  int get capacity => _storage.length;

  bool get isEmpty => _size == 0;

  T? get top => isEmpty ? null : _storage[_size - 1];

  void push(T element) {
    if (_size == capacity) {
      _resize(capacity * 2);
    }

    _storage[_size] = element;
    _size++;
  }

  T? pop() {
    if (isEmpty) return null;

    _size--;
    T? value = _storage[_size];
    _storage[_size] = null;

    // Shrink إذا أصبحت المساحة أكبر بمرتين من العناصر
    if (_size > 0 && _size <= capacity ~/ 2) {
      _resize(capacity ~/ 2);
    }

    return value;
  }

  void clear() {
    _storage = List.filled(4, null);
    _size = 0;
  }

  void _resize(int newCapacity) {
    List<T?> newStorage = List.filled(newCapacity, null);

    for (int i = 0; i < _size; i++) {
      newStorage[i] = _storage[i];
    }

    _storage = newStorage;
  }

  @override
  String toString() {
    return _storage.take(_size).toList().toString();
  }
}



class MyStack<T> {
  List<T> _storage = [];

  void push(T element) => _storage.add(element);

  T? pop() => _storage.isNotEmpty ? _storage.removeLast() : null;

  T? get top => _storage.isNotEmpty ? _storage.last : null;

  bool get isEmpty => _storage.isEmpty;

  int get size => _storage.length;

  void get clear => _storage.clear();

  bool contains(T element) => _storage.contains(element);

  int indexOf(T element) => _storage.indexOf(element);

  int lastIndexOf(T element) => _storage.lastIndexOf(element);

  void remove(T element) => _storage.remove(element);

  void removeAt(int index) => _storage.removeAt(index);

  void removeRange(int start, int end) => _storage.removeRange(start, end);

  void swapWith(MyStack<T> other) {
    var ls1 = _storage;
    var ls2 = other._storage;
    other._storage = ls1;
    _storage = ls2;
    (ls1, ls2) = (ls2, ls1);
    _storage = ls1;
    other._storage = ls2;
  }

  void swap(MyStack<T> other) {
    var temp = _storage;
    _storage = other._storage;
    other._storage = temp;
  }
}
