// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:flutter_application_3/models/catalog.dart';
import 'package:flutter_application_3/pages/Home_detail_Page.dart';
import 'package:flutter_application_3/widgets/HomeWidget/CataLogItem.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,MaterialPageRoute(
                       builder: (context)=>HomeDetailPage(
                                    catalog: catalog),
                         ),
               ),
          child: CataLogItem(catalog: catalog));  //return home page 
      },
    );
  }
}
///3th...............
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