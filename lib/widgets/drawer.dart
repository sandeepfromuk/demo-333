import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = 
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJkZr1kTCI6oW2D9y9-QCRORU6rQ8Ub0_13Q&usqp=CAU";
    return Drawer(
      child: Container(
        color:Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.red,
      
                      ),
                    accountName: Text("ankit"),
                    accountEmail: Text("ankit@.com"),
                    currentAccountPicture: CircleAvatar(
                            
                              backgroundImage: NetworkImage(imageUrl),
                     ),
                  //currentAccountPicture: Image.network(imageUrl),
      
                ),
                ),
                ListTile(
                  leading: Icon
                            (CupertinoIcons.home,
                            color: Colors.white,
                       ),
                  title: Text(
                    "Home",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                              color: Colors.white,
                          ),
                        ),  
                 ),
                  ListTile(
                  leading: Icon
                            (CupertinoIcons.profile_circled,
                            color: Colors.white,
                       ),
                  title: Text(
                    "Profile",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                              color: Colors.white,
                          ),
                        ),  
                 ),
                  ListTile(
                  leading: Icon
                            (CupertinoIcons.mail,
                            color: Colors.white,
                       ),
                  title: Text(
                    "Email me",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                              color: Colors.white,
                          ),
                        ),  
                 )
          ],
        ),
      ),
    );
  }
}
