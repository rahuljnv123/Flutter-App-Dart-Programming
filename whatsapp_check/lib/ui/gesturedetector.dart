import 'package:flutter/material.dart';

class top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,


      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button()
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,

    );
  }
}

class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("UNDER PROCESS"),
          backgroundColor: Colors.red,);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding:EdgeInsets.all(10.0) ,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text("Button"),
      ),
    );
  }
}

