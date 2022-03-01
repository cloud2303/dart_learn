class SomeBaseClass {
  //
}

class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {}

class AnotherClass {}

void main(List<String> args) {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  print(someBaseClassFoo); //Instance of 'Foo<SomeBaseClass>'
  // var f = Foo<AnotherClass>();//wrong
  // print(f);
  var extenderFoo = Foo<Extender>();
  print(extenderFoo); //Instance of 'Foo<Extender>'
}
