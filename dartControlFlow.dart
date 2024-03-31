import 'dart:io';

void main() {
  // Prompt the user for input
  stdout.write("Enter a number: ");
  final userInput = stdin.readLineSync();

  // Parse the input as a double
  final number = double.tryParse(userInput);

  if (number == null) {
    print("Invalid input. Please enter a valid number.");
  } else {
    // Check the conditions and print the appropriate message
    if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  }
}
