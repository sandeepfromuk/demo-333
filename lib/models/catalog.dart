// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
}
//     Item(1, "iPhone13Pro", "Apple iPhone13Pro generator", 77777, "#33505a",
//         "https://images.unsplash.com/photo-1580910051074-3eb694886505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),
//     Item(2, "iPhone13Pro", "Apple iPhone13Pro generator", 77777, "#33505a",
//         "https://images.unsplash.com/photo-1580910051074-3eb694886505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),
//   ];
// }

//= [];
//}
//  = [
//    Item(id:1,name: "iPhone13Pro", desc:"Apple iPhone13Pro generator",price: 77777,color: "#33505a",
// //       imageUrl:"https://images.unsplash.com/photo-1580910051074-3eb694886505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80")
// //   Item(id:2, name:"iPhone13Pro",desc: "Apple iPhone13Pro generator",price: 77777,color: "#33505a",
// //       imageUrl:"https://images.unsplash.com/photo-1580910051074-3eb694886505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),

//  ];

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;
// constructor

  Item(
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.imageUrl,
  );

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? imageUrl,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      price ?? this.price,
      color ?? this.color,
      imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'imageUrl': imageUrl,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id'] as int,
      map['name'] as String,
      map['desc'] as String,
      map['price'] as num,
      map['color'] as String,
      map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        imageUrl.hashCode;
  }
}
 // factory Item.fromMap(Map<String, dynamic> map) {
  //   //intialize bases of some logic use factory con
  //   return Item(
  //       id: map["id"],
  //     name: map["name"],
  //     desc: map["desc"],
  //     price: map["price"],
  //     color: map["color"],
  //     imageUrl: map["imageUrl"],
  //   );
  // }
  //  toMap() => {
  //       "id": id,
  //       "name": name,
  //       "desc": desc,
  //       "price": price,
  //       "color": color,
  //       "imageurl": imageUrl
  //     };
  /////////////////////////////////////////////////////


