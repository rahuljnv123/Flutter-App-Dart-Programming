
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quoteapp extends StatefulWidget {
  @override
  _quoteappState createState() => _quoteappState();
}

class _quoteappState extends State<quoteapp> {

  int _index = 0;
  List list = ["Start each day with a positive thought and a grateful heart. ",
    "Today is your day. Your mountain is waiting so get on your way.",
    "Light tomorrow with today",
    "Yesterday is not ours to recover, but tomorrow is ours to win or lose.",
    "When it rains, it pours? but soon, the sun shines again. Stay positive. Better days are on their way."];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily quotes",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        )),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              width: 300,
              height: 200,
              color: Colors.transparent,
              child: Center(child: Text(list[_index%list.length],
              style: TextStyle(
                fontSize: 24.2,
                fontWeight: FontWeight.bold

              ),)),
            ),
            Divider(thickness: 2.4,),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: FlatButton.icon(onPressed: _show,
                color: Colors.green,
                icon: Icon(Icons.wb_sunny),
                label: Text("click me",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.green,
                fontSize: 25.5
              ),),),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _show() {
    setState(() {
      _index += 1;
    });
     //_index  +=1;
  }
  }



