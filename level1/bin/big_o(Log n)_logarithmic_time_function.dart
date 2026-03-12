// ✨The Summary✨

// 🔥O(log n) - Log₂(n): appears when the problem size is reduced (usually by half) at each step instead of iterating through all elements

// 💡Meaning: instead of checking elements sequentially, we divide the search space in half each iteration

// 📍O(log n) example
// Binary Search, Divide & Conquer Algorithms

// ⚡O(log n) is significantly faster than O(n) for large input sizes.

// دالة بحث لوغاريتمي تعمل مع أي نوع بيانات قابل للمقارنة (Numbers, Strings, الخ)
int binarySearch<T extends Comparable>(List<T> sortedList, T target) {
  int low = 0;
  int high = sortedList.length - 1;

  while (low <= high) {
    int mid = low + (high - low) ~/ 2; // تجنب الـ Overflow وتأكد من النتيجة Int
    int cmp = target.compareTo(sortedList[mid]);

    if (cmp == 0) return mid;
    if (cmp < 0) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}
