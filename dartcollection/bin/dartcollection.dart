import 'package:dartcollection/dartcollection.dart' as dartcollection;
class Person{
  String name;
  Person(this.name);
}
void main(List<String> arguments) {
  //var list = [10,20,30,40,50,60,70];

  var rahul = new Person("RAHUL");
  var ankit = new Person("ANKIT");
  var anil = new Person("ANIL");
  var ammy = new Person("AMMYRULE");

  var objList = new List<Person>();
  objList.add(rahul);
  objList.add(ankit);
  objList.add(anil);
  objList.add(ammy);
  for(int i=0;i<objList.length;i++){
    print(objList[i].name);
  }

  // var list_obj = new List<Person>();
  // var strlist = new List<String>();
  // strlist.add("rahul");
  // strlist.add("ranjan");
  // strlist.add("mukesh");

}
