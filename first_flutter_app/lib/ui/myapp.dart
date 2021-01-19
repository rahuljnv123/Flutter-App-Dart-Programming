

import 'package:flutter/material.dart';

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey,
      child: Center(
          child: Text("HELLO FLUTTER",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 23.25,
                  fontStyle: FontStyle.italic
              )
          )
      ),
    );
  }
}

