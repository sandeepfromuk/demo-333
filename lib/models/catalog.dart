class CatalogModel{
static final items=[
  Item(1, "iPhone13Pro", "Apple iPhone13Pro generator",77777, "#33505a"
  ,"https://images.unsplash.com/photo-1580910051074-3eb694886505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80") ,
  Item(2, "iPhone13Pro", "Apple iPhone13Pro generator",77777, "#33505a", 
    "https://images.unsplash.com/photo-1580910051074-3eb694886505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80") ,

  //Item(3, "iPhone13Pro", "Apple iPhone13Pro generator",77777, "#33505a", "https://www.shutterstock.com/image-vector/realistic-black-television-screen-on-isolated-1377260975")
  ];
}
class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;
//name constructor 
  Item(this.id, this.name, this.desc, this.price, this.color, this.imageUrl);

}

