printInteger(int aNumber) {
  print('The number is $aNumber');
}

// This is comment

class Person {
  String name;
  int age;
  
  Person({String name, int age}) {
    this.name = name;
    this.age = age;
  }
}

class Person1 {
  String name;
  int age;
  
  Person1({this.name, this.age = 30});
}

void main() {
  var p1 = Person(name: 'Max',age: 30);
  var p2 = Person(age: 31, name: 'Manu');

  var p3 = Person1(name: 'Haha');

  var number = 42;
  printInteger(number);
}
