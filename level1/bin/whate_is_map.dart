import 'dart:collection';

extension MapUtils<K, V> on Map<K, V> {
  void printGrade(K key) {
    final value = this[key];
    if (value != null) {
      print('$key Grade: $value');
    } else {
      print('Grade Not Found for $key');
    }
  }
}

void main() {
  final studentGrades = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
  };


  studentGrades.printGrade('Charlie');
  studentGrades.printGrade('Omer');
}