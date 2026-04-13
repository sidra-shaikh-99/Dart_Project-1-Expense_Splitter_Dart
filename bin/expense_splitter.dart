import 'dart:io';

void main() {
  print("💸 Expense Splitter\n");

  // Ask total expense
  print("Enter total expense amount:");
  String? totalInput = stdin.readLineSync();

  // Ask number of people
  print("Enter number of people:");
  String? peopleInput = stdin.readLineSync();

  // Convert to numbers
  double total = double.tryParse(totalInput ?? '') ?? 0;
  int people = int.tryParse(peopleInput ?? '') ?? 1;

  if (people <= 0) {
    print("Invalid number of people.");
    return;
  }

  // Calculate split
  double perPerson = total / people;

  // Output
  print("\n--- Result ---");
  print("Total Expense: ₹$total");
  print("People: $people");
  print("Each person should pay: ₹${perPerson.toStringAsFixed(2)}");
}