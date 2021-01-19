import 'package:boardappdemo/boardapp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    home: BoardApp(),
  ));
}

