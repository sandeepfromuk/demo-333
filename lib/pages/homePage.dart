// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/models/catalog.dart';
import 'package:flutter_application_3/widgets/CatalogHeader.dart';
import 'package:flutter_application_3/widgets/HomeWidget/Catalog_list.dart';
import 'package:flutter_application_3/widgets/Theme.dart';
import 'package:flutter_application_3/widgets/drawer.dart';
import 'package:flutter_application_3/widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  @override
  void initState() {
    // class intilize before we will load data here
    super.initState();
    print('sandeep');
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));

    //service lib
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");

    var decodeData = jsonDecode(catalogJson);

    // //map -incode ,string -json (decode)
    var productsData = decodeData["products"];

    // List<Item> list
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

//daat convetor json
  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      //we will create body
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatalogHeader(),
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              CatalogList().py16().expand()
            else
              Center(
                child: CircularProgressIndicator(),
              )
            // //header
            //     "Catalog App".text.xl5.bold.color(MyTheme.darkBlueishColor).make(),
            //     "Tranding products".text.make(),
          ]),
        ),
      ),
    );
  }
}


////***********1st  */
// class CatalogHeader extends StatelessWidget {
//   const CatalogHeader({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         //header
//         "Catalog App".text.xl5.bold.color(MyTheme.darkBlueishColor).make(),
//         "Tranding products".text.make(),
//       ],
//     );
//   }
// }


//************************8882nd  */
// class CatalogList extends StatelessWidget {
//   const CatalogList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: CatalogModel.items.length,
//       itemBuilder: (context, index) {
//         final catalog = CatalogModel.items[index];
//         return CataLogItem(catalog: catalog);
//       },
//     );
//   }
// }
//******************************333333 */

// class CataLogItem extends StatelessWidget {
//   final Item catalog;

//   const CataLogItem({super.key, required this.catalog})
//       : assert(catalog != null);
//   //,

//   //super(key:key );
//   @override
//   Widget build(BuildContext context) {
//     return VxBox(
//       child: Row(
//         children: [
//           CatalogImage(
//             image: catalog.imageUrl,
//           ),
//           Expanded(
//               child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               catalog.name.text.lg.color(MyTheme.darkBlueishColor).bold.make(),
//               catalog.desc.text.textStyle(context.captionStyle).make(),
//               ButtonBar(
//                 alignment: MainAxisAlignment.spaceBetween,
//                 buttonPadding:Vx.mH8, //Vx.mOnly(right: 16),
//                 children: [
//                   "\$${catalog.price}".text.bold.make(),
//                   ElevatedButton(onPressed: () {}, 
//                   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.darkBlueishColor)),
//                   shape:MaterialStateProperty.all(StadiumBorder(),),
//                   child: "Buy".text.make())
//                 ],
//               )
//             ],
//           ))
//         ],
//       ),
//     ).white.rounded.square(150).make().py16();
//   }
// }

//cat*****************************44444444444444
// class CatalogImage extends StatelessWidget {
//   final String image;

//   const CatalogImage({super.key, required this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Image.network(image)
//         .box
//         .rounded
//         .p8
//         .color(MyTheme.creamColor)
//         .make()
//         .p16()
//         .w40(context);
//   }
// }


//--------------------------End code-------------------------------------
//----------------------------------------------------




//         appBar: AppBar(
//           title: Text("Catalog App"),
//           // style: TextStyle(color: Colors.black)),

//           // backgroundColor: Colors.white,
//           // elevation: 0.0,
//           // iconTheme: IconThemeData(color:Colors.black),
//         ),

//         //drawer: Drawer(),
//         drawer: MyDrawer(),
//         body: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: (CatalogModel.items.length != null &&
//                     CatalogModel.items.isNotEmpty)
//                 ? GridView.builder(
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         mainAxisExtent: 150,
//                         crossAxisSpacing: 16
//                         ), //
//                     itemBuilder: (context, index) {
//                       final item = CatalogModel.items[index];
//                       return Card(
//                         shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

//                         child: GridTile(
//                                   header: Container(
//                                           child: Text(item.name,style: TextStyle(color: Colors.white),),
//                                           padding: const EdgeInsets.all(12),
//                                           decoration: BoxDecoration(
//                                                  color: Colors.deepPurple,
//                                                   ),
//                                             ),
//                                   child: Image.network(item.imageUrl,fit: BoxFit.contain,),
//                                   //footer: Text(item.price.toString()),
//                                    footer: Container(
//                                           child: Text(
//                                             item.price.toString(),
//                                             style: TextStyle(color: Colors.white)

//                                           ),
//                                           padding: const EdgeInsets.all(12),
//                                           decoration: BoxDecoration(
//                                                  color: Colors.black,
//                                                   ),
//                                             ),
//                                   )
//                               );
//                     },
//                     itemCount: CatalogModel.items.length,
//                   )

//                 // ListView.builder(
//                 // //child: ListView.builder(
//                 //   // itemCount: CatalogModel.items.length,
//                 //   //itemCount: dummyList.length,
//                 //   itemCount: CatalogModel.items.length,
//                 //   itemBuilder: (context, index)=> //{
//                 //     //return
//                 //     ItemWidget(
//                 //       // item: CatalogModel.items[index],
//                 //       // item: dummyList[index],
//                 //       item: CatalogModel.items[index],
//                 //     ) //;
//                 //  // },

//                 // ):

//                 : Center(
//                     child: CircularProgressIndicator(),
//                   ))
//         //
//         //
//         // Center(
//         //   child: Container(
//         //     child: Text("welcome to flutter coding " +context.runtimeType.toString()),
//         //   ),
//         // ),
//         );
//   }
// }
//parent to follow and constraint to down.......
//if else not in child ...but inside we use list
//

