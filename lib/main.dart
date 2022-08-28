import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
  //local variable 
  int duble - we use num 
  for all we use var 
  
  */
    String n = "name";
    return MaterialApp(
      home: HomePage(),
    );
  }
}
