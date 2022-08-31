// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application_3/pages/LoginPage.dart';
import 'package:flutter_application_3/pages/homePage.dart';
import 'package:flutter_application_3/utills/routes.dart';
import 'package:flutter_application_3/widgets/Theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:MyTheme.lihgtTheme(context ),
     
          //  ThemeData(
          //      primarySwatch: Colors.deepPurple,
          //      fontFamily: GoogleFonts.lato().fontFamily,
          //     primaryTextTheme: GoogleFonts.latoTextTheme(),
          //      appBarTheme: AppBarTheme(
          //             color: Colors.white,
          //             elevation: 0.0,
          //             iconTheme: IconThemeData(color: Colors.black), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
          //             //?
          //       )
          //      ),
               
      darkTheme: ThemeData(
      //brightness: Brightness.dark,
       primarySwatch: Colors.green),
       debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: "/",
      routes:{
         "/":(context) => LoginPage(),
         MyRoutes.homeRoute:(context) => HomePage(),
           MyRoutes.loginRoute:(context) => LoginPage(),
           MyRoutes.cartRoute:(context) => CartPage(),
      } ,
    );
  }
}
//we have a 4 types routes 
//intial routes - is we have to go 


