import 'package:dartmap/dartmap.dart' as dartmap;

void main(List<String> arguments) {
    var map = {
      1 : "rahul",
      2 : "anil",
      3:"ankit"
    };

    map.forEach((key, value) => print(value));

    var k = map.keys;
    var v = map.values;
    print(k);
    print(v);

  }

