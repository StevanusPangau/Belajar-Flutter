void main(List<String> args) {
  // cara 1 mengambil value dari function
  final result = records();
  print(result.$1);
  print(result.$2);

  // cara 2 mengambil value dari function
  final (first, last) = records();
  print(first);
  print(last);

  // switch case untuk melihat hari apa sekarang
  final describedDate = descripeDate(DateTime.now());
  print(describedDate);

  // switch case untuk melihat suara hewan dengan mengirim param class
  final soundOfAnimal = whatDoseItSounds(Sheep());
  print(soundOfAnimal);
}

String descripeDate(DateTime dt) =>
    switch (dt.weekday) { 1 => 'Senin', 6 || 7 => 'Weekend', _ => 'Hari lain' };

// coba return multiple value
(String, String) records() {
  final firstName = 'Evan';
  final lastName = 'Pangau';

  return (firstName, lastName);
}

// harus memasukan semua class extends Animal
String whatDoseItSounds(Animal animal) => switch (animal) {
      Cow c => '$c Moo',
      Sheep s => '$s Baa',
      Pig _ => 'Oink',
      _ => 'Unknow'
    };

abstract interface class DoSth {
  void myMethod();
}

class WeDoSth implements DoSth {
  @override
  void myMethod() {}
}

sealed class Animal {}

class Cow extends Animal {}

class Sheep extends Animal {}

class Pig extends Animal {}

class Lion extends Animal {}
