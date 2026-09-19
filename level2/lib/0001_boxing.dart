// تعريف نوعين مختلفين كلياً في الـ Compile-time يغلفان int
extension type UserId(int id) {
  // دالة مخصصة لهذا النوع فقط
  bool get isSystemAdmin => id == 1;
}

extension type ProductId(int id) {}

void fetchUserProfile(UserId userId) {
  print("Fetching profile for user: ${userId.id}");
}

void main() {
  final user = UserId(101);
  final product = ProductId(101);

  fetchUserProfile(user); // صحيح 100%

  // خطأ في الـ Compile-time! رغم أن كلاهما int في الأصل
  // fetchUserProfile(product);

  // خطأ! طريقة isOdd الخاصة بـ int مخفية افتراضياً للـ Type Safety
  // print(user.isOdd);
}
