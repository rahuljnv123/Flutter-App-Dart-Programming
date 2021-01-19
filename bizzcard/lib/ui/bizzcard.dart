import 'package:flutter/material.dart';


class Bizzcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My_card",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getcard(),
            _getimage()
          ],
        ),
      ),
    );
  }

  Container _getcard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(41.4),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20.5),
            
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Rahul Ranjan",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25.4,
            color: Colors.white

          ),),
          Text("rahuljnv1203@gmail.com",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 16.4,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person),
              Text("7091761592",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.25
              ),)
            ],
          )
        ],
      )


    );
  }

  Container _getimage() {
    return Container(
      width: 100,
      height: 100,
     // margin: EdgeInsets.all(50.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.2)),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
