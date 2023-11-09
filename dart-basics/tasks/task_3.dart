import "dart:io";

void main() {
  final randNumer = 23;
  int attemps = 0;

  while (true) {
    print("Guess the number : ");
    var input = stdin.readLineSync();
    int number = int.parse(input ?? '');

    attemps++;

    if (number == randNumer) {
      print("You guessed it!");
      break;
    } else if (number > randNumer) {
      print("Too high");
    } else {
      print("Too low");
    }
  }

  print('You have tried $attemps times.');
}
