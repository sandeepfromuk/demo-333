import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/widgets/drawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
                title: Text("Catalog App"),
                // style: TextStyle(color: Colors.black)),

                // backgroundColor: Colors.white,
                // elevation: 0.0,
                // iconTheme: IconThemeData(color:Colors.black),
                   
                     
                 ),
        
                   
        //drawer: Drawer(),
        drawer: MyDrawer(),
        body : Center(
          child: Container(
            child: Text("welcome to flutter coding " ),
          ),
        ),
      );
    
    
  }
}