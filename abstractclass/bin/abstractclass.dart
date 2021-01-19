import 'package:abstractclass/abstractclass.dart' as abstractclass;

abstract class Animal{

  void breathe();  // abstract method

  void makeNoise(){
    print("Animals noises");
  }
}
class Person implements Animal{
  String name , nation;

  Person(this.name,this.nation);

  @override
  String toString() => "$name and $nation";
  @override
  void breathe() {
    print("person breathe");
  }

  @override
  void makeNoise() {
    print("person noises");
  }

}
class Comedian extends Person implements Isfunny{
  Comedian(String name, String nation) : super(name, nation);

  @override
  void makeLaugh() {
    print("makes people happy");
  }

}
abstract class Isfunny{
  void makeLaugh(); //abstract method
}

void main(List<String> arguments) {
  var obj = new Person("Rahul Ranjan","india");
  //print("${obj.name} and ${obj.nation}");
  print(obj);
  //obj.breathe();
  //obj.makeNoise();
  var obj_com = new Comedian("anil", "india");
  print(obj_com);
}
