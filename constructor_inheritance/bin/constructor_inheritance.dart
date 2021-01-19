import 'package:constructor_inheritance/constructor_inheritance.dart' as constructor_inheritance;


class location{
  num lat , lng; // it can store float and int as well
  location(this.lat,this.lng);
}

class place extends location{
  String city;
  place(num lat,num lng,this.city) : super(lat,lng);

  @override
  String toString() {
    String res = "$lat and $lng and $city";
    return res;
  }
}
void main(List<String> arguments) {
  var obj = new place(20.568,80.650,"delhi");

  print(obj.toString());
  //print("location : ${obj.lat} and ${obj.lng} and ${obj.city}");
}
