void main() {
  List<int> numberList = [3, 4, 5, 6, 7, 5];
  List<int> secondList = [];

  // cara satu
  numberList.forEach((element) {
    // element++;
    print(element);
    secondList.add(element);
  });

  print(numberList);
  print(secondList);

  // cara dua
  for (var element in numberList) {
    print(element);
  }
}
