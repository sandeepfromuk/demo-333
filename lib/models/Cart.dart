import 'package:flutter_application_3/models/catalog.dart';

class CartModel {
  ///////////////////////////////////
  CatalogModel _catalog = CatalogModel();
  
  
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;
  ////////////////
  //connection of ids - store id of each item
  final List<int> _itemIds = [];

// //get catalog
  CatalogModel get catalog => _catalog;
//set
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item itme) {
    _itemIds.add(itme.id);
  }

  //remove item
  void remove(Item itme) {
    _itemIds.remove(itme.id);
  }
}
