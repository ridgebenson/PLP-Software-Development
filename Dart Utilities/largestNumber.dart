void main() {
  List<int> numbers = [10, 5, 20, 15, 8];
  int largest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }

  print('The largest number is $largest');
}
