import 'dart:io';

void main() {
  print("Enter the number of Fibonacci numbers to generate:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> fibonacciSequence = generateFibonacciSequence(n);

  print("Fibonacci Sequence:");
  print(fibonacciSequence);

  List<int> uniqueNumbers = findUniqueNumbers(fibonacciSequence);

  print("\nUnique Numbers in Fibonacci Sequence:");
  print(uniqueNumbers);
}

List<int> generateFibonacciSequence(int n) {
  List<int> sequence = [];
  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    sequence.add(a);
    int next = a + b;
    a = b;
    b = next;
  }

  return sequence;
}

List<int> findUniqueNumbers(List<int> numbers) {
  List<int> uniqueNumbers = [];
  for (int number in numbers) {
    if (!uniqueNumbers.contains(number)) {
      uniqueNumbers.add(number);
    }
  }
  return uniqueNumbers;
}
