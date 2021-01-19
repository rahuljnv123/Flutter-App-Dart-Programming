import 'package:flutter/material.dart';



class scaffoldtry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FACEBOOK"),
        centerTitle: true,

      backgroundColor: Colors.indigo,),
      body: Center(
        child: Text("WELCOME!",
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontSize: 23.5
        ),),
      ),
    );
  }
}
