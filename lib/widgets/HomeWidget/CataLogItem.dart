// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/HomeWidget/add_to_cart.dart';
import 'package:flutter_application_3/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_3/models/Cart.dart';
import 'package:flutter_application_3/models/catalog.dart';
import 'package:flutter_application_3/widgets/HomeWidget/CatalogImage.dart';
//import 'package:flutter_application_3/widgets/Theme.dart';

//it mention in catalog image but not manage
class CataLogItem extends StatelessWidget {
  final Item catalog;

  const CataLogItem({super.key, required this.catalog})
      : assert(catalog != null);
  //,

  //super(key:key );
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.imageUrl,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalog.name.text.lg.color(context.accentColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8, //Vx.mOnly(right: 16),
                children: [
                  "\$${catalog.price}".text.bold.make(),
                  AddtoCart(catalog: catalog)
                ],
              )
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();

    ///white.rounded.square(150).make().py16();
  }
}

////////////////////////////////

