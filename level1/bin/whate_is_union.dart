//! الفكرة :
//* نريد نوع يفرض على المبرمج التعامل مع حالتين فقط بشكل آمن، وهنا يأتي دور
/// * Sealed Class في Dart.

// 1. المعادل في Dart (The Dart Mirror)
// لغة Dart هي لغة Type-safe وتعتمد على الـ Garbage Collection، لذا فهي لا تدعم مفهوم الـ Union بنفس الطريقة الفيزيائية (تشارك مساحة الذاكرة) لأنها تعتبرها عملية غير آمنة.

// المعادل المعماري: نستخدم ما يسمى بالـ Sealed Classes (أو Enumerated Types المتقدمة) والـ Pattern Matching.

// الهدف: بدلاً من توفير الذاكرة، نركز على "سلامة النوع" (Type Safety)، بحيث نضمن أن المتغير يحمل نوعاً واحداً فقط من عدة خيارات محددة.
//التوأم في Dart: هو الـ Object (كأب لجميع الأنواع) أو استخدام مكتبات مثل freezed التي تولد كود Unions آمن.

sealed class Result {}

class Success extends Result {
  final int value;
  Success(this.value);
}

class Failure extends Result {
  final String error;
  Failure(this.error);
}

// استخدام الـ Extension لإضافة وظيفة ذكية
extension ResultExt on Result {
  void log() => switch (this) {
    Success s => print('نجاح: ${s.value}'),
    Failure f => print('فشل: ${f.error}'),
  };
}

//! Examples :

// تعريف النوع LoginIdentifier
sealed class LoginIdentifier {}

class Username extends LoginIdentifier {
  final String value;

  Username(this.value);
}

class PhoneNumber extends LoginIdentifier {
  final int value;

  PhoneNumber(this.value);
}

//دالة التعامل مع النوع (Exhaustive Handling)
void login(LoginIdentifier identifier) {
  switch (identifier) {
    case Username():
      print("Logging in with username: ${identifier.value}");
      break;

    case PhoneNumber():
      print("Logging in with phone number: ${identifier.value}");
      break;
  }
}

//! dynamic = حرية بدون أمان
//!sealed = أمان مع تحكم كامل

void main() {
  login(Username("ibrahem"));
  login(PhoneNumber(777123456));
}
