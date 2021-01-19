import 'package:studentclass/studentclass.dart' as studentclass;


class student {
  String name;
  int age;
  void printAge(){
    print(this.age);
  }
}
class boys extends student{

  void printName() => print(this.name);
}

class girls extends student{

  void printName() => print(this.name);

  @override
  void printAge() {
     print(this.age);
  }
}
void main(List<String> arguments) {

  var boy_Obj = new boys();
  boy_Obj.name = "rahul ranjan";
  boy_Obj.age = 23;
  boy_Obj.printName();
  boy_Obj.printAge();


  var girl_Obj = new girls();
  girl_Obj.name = "sakshi";
  girl_Obj.age = 19;

  girl_Obj.printName();
  girl_Obj.printAge();

}
