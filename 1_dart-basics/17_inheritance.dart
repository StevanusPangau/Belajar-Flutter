void main() {
  Student student1 = Student();
  student1.setSemester = 2;
  student1.setName = "Felix";
  student1.setAge = 20;

  Person person1 = Person();
  person1.setName = "Evan";
  person1.setAge = 21;

  int semeter = student1.getSemester;

  print("Student ${student1.getName} is ${student1.getAge} years old");
  print("Student ${student1.getName} is in semester ${semeter}");

  student1.jump();
  student1.study();
  student1.run();
}

mixin Learner {
  void study() {
    print("study");
  }
}

mixin Jumper {
  void jump() {
    print("i can jump");
  }
}

class Person {
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name) {
    this._name = name;
  }

  set setAge(int age) {
    this._age = age;
  }

  void run() {
    print("Person ${_name} is running");
  }
}

class Student extends Person with Learner, Jumper {
  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int semester) {
    this._semester = semester;
  }

  void party() {
    print("Student ${_name} is partying");
  }
}
