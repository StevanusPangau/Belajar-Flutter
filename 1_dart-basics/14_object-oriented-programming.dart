void main() {
  Car car1 = Car();
  car1.color = "blue";
  car1.whichColor();

  Car car2 = Car();
  car2.color = "red";
  car2.whichColor();

  car1.carMove();
}

class Car {
  late String color;
  void carMove() {
    print("$color Car is moving");
  }

  void whichColor() {
    print("Car color : $color");
  }
}
