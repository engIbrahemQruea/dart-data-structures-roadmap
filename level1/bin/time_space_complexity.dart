import 'dart:math';

void main1UsingForLoop() {
  // final numbers = List.generate(10000000, (i) => i);

  // final stopwatch = Stopwatch()..start();

  // int sum = 0;

  // for (int i = 0; i < numbers.length; i++) {
  //   if (numbers[i] % 2 == 0) {
  //     sum += numbers[i];
  //   }
  // }

  // stopwatch.stop();

  // print("Sum: $sum");
  // print("Time: ${stopwatch.elapsedMilliseconds} ms");

  final numbers = Iterable.generate(10000000, (i) => i);

  final stopwatch = Stopwatch()..start();

  int sum = 0;

  for (final n in numbers) {
    if (n.isEven) {
      sum += n;
    }
  }

  stopwatch.stop();

  print("Sum: $sum");
  print("Time: ${stopwatch.elapsedMilliseconds} ms");
}

void main2UsingHigherOrderFunctions() {
  // final numbers = List.generate(10000000, (i) => i);

  // final stopwatch = Stopwatch()..start();

  // final sum = numbers
  //     .where((n) => n % 2 == 0)
  //     .fold<int>(0, (acc, n) => acc + n);

  // stopwatch.stop();

  // print("Sum: $sum");
  // print("Time: ${stopwatch.elapsedMilliseconds} ms");

  const count = 10000000;

  final numbers = Iterable<int>.generate(count, (i) => i);

  final stopwatch = Stopwatch()..start();

  final sum = numbers.where((n) => n.isEven).fold<int>(0, (acc, n) => acc + n);

  stopwatch.stop();

  print("Sum: $sum");
  print("Time: ${stopwatch.elapsedMilliseconds} ms");
}

void main() {
  print('Using for loop');
  main1UsingForLoop();
  print('Using higher order functions');
  main2UsingHigherOrderFunctions();
}
