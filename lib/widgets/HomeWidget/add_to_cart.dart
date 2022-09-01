import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/Cart.dart';
import 'package:flutter_application_3/models/catalog.dart';
import 'package:flutter_application_3/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';
class AddtoCart extends StatefulWidget {
  final Item catalog;
  const AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  // bool isAdded = false;
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart;
    if (_cart.items.contains(widget.catalog)) {
      isInCart = true;
    } else {isInCart = false;
    }
    //bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          isInCart = isInCart.toggle();
          if (!isInCart) {
            final _catalog = CatalogModel();
            //final _cart = CartModel();
            _cart.catalog = _catalog;
            _cart.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                //it not working ->context.theme.buttonColor)
                MyTheme.darkBlueishColor),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            )),
        child: isInCart ? Icon(Icons.done) :Icon(CupertinoIcons.cart_badge_plus), //"Add to cart ".text.make() //buy
        );
  }
}
