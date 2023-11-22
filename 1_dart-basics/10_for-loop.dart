void main() {
  List<int> numberList = [3, 4, 5, 6, 7, 3];
  List<int> secondList = [];

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i] == 3) {
      secondList.add(numberList[i]);
    }

    print("List element : ${numberList[i]}");
  }

  print("Second list : $secondList");
}
