


import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BoardApp extends StatefulWidget {
  @override
  _BoardAppState createState() => _BoardAppState();
}

class _BoardAppState extends State<BoardApp> {
  @override
  var firestoreDb = FirebaseFirestore.instance.collection("board").snapshots();
  //Firebase.initializeApp();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BoardApp"),
      ),
      body: StreamBuilder(
        stream: firestoreDb,
        builder: (context,snapshot){
          if(!snapshot.hasData) return CircularProgressIndicator();
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
              itemBuilder: (context,int index){
                return (snapshot.data.documents[index]['tittle']);

          });
        }
      ),
    );
  }
}
