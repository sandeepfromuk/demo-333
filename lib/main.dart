import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/LoginPage.dart';
import 'package:flutter_application_3/pages/homePage.dart';
import 'package:flutter_application_3/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:ThemeData(
               primarySwatch: Colors.deepPurple,
               fontFamily: GoogleFonts.lato().fontFamily,
                primaryTextTheme: GoogleFonts.latoTextTheme(),
               ),
               
      darkTheme: ThemeData(
      //brightness: Brightness.dark,
       primarySwatch: Colors.green),
      //home: HomePage(),
      initialRoute: "/",
      routes:{
         "/":(context) => LoginPage(),
         MyRoutes.homeRoute:(context) => HomePage(),
           MyRoutes.loginRoute:(context) => LoginPage(),

      } ,
    );
  }
}
//we have a 4 types routes 
//intial routes - is we have to go 


