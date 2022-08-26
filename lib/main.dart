import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/mainold.dart';
 void main() {
  runApp(MyApp()
  );
  
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home:Material(
    child:Container(
      child: Text("welcome to 30 days flutter"),

       ),
     ),
  );
    
  }
}