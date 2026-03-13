extension ListUtils<T> on List<T> {
  // جعل الـ Reverse ميزة مدمجة لأي List
  void myInPlaceReverse() {
    int left = 0, right = this.length - 1;
    while (left < right) {
      T temp = this[left];
      this[left] = this[right];
      this[right] = temp;
      left++;
      right--;
    }
  }
}

// الاستخدام:
// numbers.myInPlaceReverse();

void reverseList(List<int> numbers) {
  numbers.myInPlaceReverse();
}

// الاستخدام:
// reverseList(numbers);

int binarySearch(List<int> numbers, int target) {
  int left = 0;
  int right = numbers.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;

    if (numbers[mid] == target) {
      return mid;
    } else if (numbers[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}

/// الاستخدام:
// int result = binarySearch(numbers, target);

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 5;

  int result = binarySearch(numbers, target);
  print(result);
}
