extension MatrixSearch on List<List<int>> {
  bool efficientSearch(int target) {
    if (this.isEmpty || this[0].isEmpty) return false;

    int r = 0;
    int c = this[0].length - 1;

    while (r < this.length && c >= 0) {
      if (this[r][c] == target) return true;
      (target < this[r][c]) ? c-- : r++;
    }
    return false;
  }
}

class Matrix<T> {
  final List<List<T>> _data;
  final int rows;
  final int cols;

  Matrix(this.rows, this.cols, T defaultValue)
    : _data = List.generate(rows, (_) => List.filled(cols, defaultValue));

  // استخدام الـ Operator لسهولة الوصول مثل المصفوفات الحقيقية
  T getElement(int r, int c) => _data[r][c];

  void setElement(int r, int c, T value) => _data[r][c] = value;

  bool searchMatrix(List<List<int>> matrix, int target) {
    int rows = matrix.length;
    int cols = matrix[0].length;

    int r = 0;
    int c = cols - 1;

    while (r < rows && c >= 0) {
      int value = matrix[r][c];

      if (value == target) {
        return true;
      } else if (target < value) {
        c--;
      } else {
        r++;
      }
    }

    return false;
  }
}

void main() {
  Matrix<int> matrix = Matrix(3, 3, 0);

  matrix.setElement(0, 0, 1);
  matrix.setElement(0, 1, 2);
  matrix.setElement(0, 2, 3);
  matrix.setElement(1, 0, 4);
  matrix.setElement(1, 1, 5);
  matrix.setElement(1, 2, 6);
  matrix.setElement(2, 0, 7);
  matrix.setElement(2, 1, 8);
  matrix.setElement(2, 2, 9);

  print(matrix.getElement(1, 1));
  print(matrix.getElement(2, 2));

  List<List<int>> matrix2 = [
    [1, 3, 5, 7],
    [10, 11, 16, 20],
    [23, 30, 34, 60],
  ];
  int target = 3;
  bool result = matrix.searchMatrix(matrix2, target);
  print(result);

  /// Using Extension
  print(matrix2.efficientSearch(target));
}
