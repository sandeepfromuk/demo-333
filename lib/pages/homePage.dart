import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/models/catalog.dart';
import 'package:flutter_application_3/widgets/drawer.dart';
import 'package:flutter_application_3/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
          // style: TextStyle(color: Colors.black)),

          // backgroundColor: Colors.white,
          // elevation: 0.0,
          // iconTheme: IconThemeData(color:Colors.black),
        ),

        //drawer: Drawer(),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
           // itemCount: CatalogModel.items.length,
           itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
               // item: CatalogModel.items[index],
                item: dummyList[index],
              );
            },
          ),
        )
        //
        //
        // Center(
        //   child: Container(
        //     child: Text("welcome to flutter coding " +context.runtimeType.toString()),
        //   ),
        // ),
        );
  }
}
//parent to follow and constraint to down.......
