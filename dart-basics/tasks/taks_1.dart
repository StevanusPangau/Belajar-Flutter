import "dart:io";

void main() {
  print("Input your name: ");
  String name = stdin.readLineSync() ?? '';
  print("Hai, $name");
}
