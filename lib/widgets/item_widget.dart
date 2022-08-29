import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  // const ItemWidget({Key key, required this.item})
  // :assert(item!=null ),
  // super(key:key);

  @override
  Widget build(BuildContext context) {
    //swithc tile for on off ,expentile
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
