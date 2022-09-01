// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/HomeWidget/add_to_cart.dart';
import 'package:flutter_application_3/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_3/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      

        
      bottomNavigationBar:
                  Container(
                    color: context.cardColor,//Colors.white,
                    child: ButtonBar(
                                  alignment: MainAxisAlignment.spaceBetween,
                                  buttonPadding:Vx.mH8, //Vx.mOnly(right: 16),
                                  children: [
                    "\$${catalog.price}".text.bold.xl4.red800.make(),
                    AddtoCart(catalog: catalog).wh(120,50)
                    // ElevatedButton(onPressed: () {}, 
                    
                    // style: ButtonStyle(
                    //     backgroundColor: MaterialStateProperty.all(
                    //       MyTheme.darkBlueishColor)
                    //       ,
                    // shape:MaterialStateProperty.all
                    // (StadiumBorder(),
                    // )),
                    // child: "Add to cart".text.make()    //buy
                    // ).wh(120, 50)
                                  ],
                                ),
                  ),//.p8(),
      backgroundColor:context.canvasColor,// MyTheme.creamColor,
      
    
      body:SafeArea(
        bottom: true,
      child:Column(children:[
      
       Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.imageUrl,
            width: 400,
          height: 350,
          fit: BoxFit.cover,
            
            ),
          
            ).h48(context),
            //.py8(),
            Expanded(
              child:VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [
                   catalog.name.text.xl4.
                   color(context.accentColor).
                   bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).xl.make(),
              10.heightBox,
              "this iphone is branded ".text.textStyle(context.captionStyle).make().p16(),
               
                ]
                ).py16(),
              
                          ),
              )
              )

      ],
      
      ),
      ),
    );
  }
}
