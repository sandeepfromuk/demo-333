import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/Cart.dart';
import 'package:flutter_application_3/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.darkBlueishColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "cart".text.make(),
      ),
      body: Column(
        children: [
          // Placeholder().p32().expand(),
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  //const _CartTotal({Key? key}) : super(key: key);
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //"\$99999".text.xl5.color(context.theme.accentColor).make(),
          "\$${_cart.totalPrice}".text.xl5.color(context.theme.accentColor).make(),  //** *
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "buying not supported yet".text.make(),
              ));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?"nothing to show ".text.xl3.makeCentered(): ListView.builder(
      itemCount: _cart.items.length, //5
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {
            _cart.remove(_cart.items[index]);
            setState(() {
              
            });
          },
        ),
        title: _cart.items[index].name.text.make(), //"Item 1".text.make(),
      ),
    );
  }
}
