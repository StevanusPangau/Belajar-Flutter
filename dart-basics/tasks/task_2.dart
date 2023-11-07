import "dart:io";

void main() {
  print("Input number for factorial: ");
  int number = int.parse(stdin.readLineSync()!);
  int result = 1;
  int i = 1;

  if (number < 0) {
    print("Number must be 0 or greater than");
  } else {
    while (i <= number) {
      result *= i;
      i++;
    }
    print("Factorial from $number is $result");
  }
}
