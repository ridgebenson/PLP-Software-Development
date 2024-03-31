import 'dart:io';

// Define an interface (abstract class) for data loading
abstract class DataLoader {
  void loadDataFromFile(String filename);
}

// Create a class that implements the DataLoader interface
class FileLoader implements DataLoader {
  @override
  void loadDataFromFile(String filename) {
    try {
      final file = File(filename);
      final content = file.readAsStringSync();
      print("Data loaded from file:\n$content");
    } catch (e) {
      print("Error loading data from file: $e");
    }
  }
}

// Create a base class with an overridden method
class MyBaseClass {
  void printMessage() {
    print("This is the base class method.");
  }
}

// Create a derived class that inherits from MyBaseClass
class MyDerivedClass extends MyBaseClass {
  @override
  void printMessage() {
    print("This is the overridden method in the derived class.");
  }
}

void main() {
  // Create an instance of FileLoader and load data from a file
  final fileLoader = FileLoader();
  fileLoader.loadDataFromFile("sample.txt");

  // Create an instance of MyDerivedClass and demonstrate method override
  final derivedObj = MyDerivedClass();
  derivedObj.printMessage();

  // Demonstrate the use of a loop (for example, printing numbers)
  for (var i = 1; i <= 5; i++) {
    print("Loop iteration $i");
  }
}
