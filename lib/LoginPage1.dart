// import 'package:flutter/material.dart';

// import 'package:flutter_application_3/pages/home_page.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String name = "";
//   bool changedButton = false;
//   @override
//   Widget build(BuildContext context) {
//     print('in this page');

//     return Material(
//       color: Colors.white,
//       child: Column(
//         children: [
//           Image.asset(
//             "assets/images/login.png",
//             width: 400,
//             height: 400,
//             fit: BoxFit.cover,
//           ),

//           //this is for gaph in text
//           SizedBox(
//             height: 20.0,
//             child: Text("zsdfgh"),
//           ),

//           Text(
//             "welome $name",
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),

//           SizedBox(
//             height: 20.0,
//           ),

//           Padding
//           (
//             padding:
//                 //const EdgeInsets.all(8.0),
//                 const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
//             child: Column
//             (
//               children: 
//               [
//                 TextFormField
//                 (
//                   decoration: InputDecoration(
//                       hintText: "Enter User  Name", labelText: "Username"),
//                   onChanged: (value) {
//                     name = value;
//                     setState(() {});
//                                       },
//                 ),
//                 TextFormField
//                 (
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       hintText: "Enter Your password ", labelText: "Password"),
//                 ),


//                 SizedBox
//                 (
//                   height: 20.0,
//                 ),
//                 Material
//                 (
//                   color: Colors.deepPurple,
//                    borderRadius: 
//                            BorderRadius.circular(changedButton ?50:8)),
//                 child: InkWell
//                   (
//                     //container
//                     //splashColor: Colors.red,
//                     onTap: () async 
//                     {
//                       setState(() {
//                         changedButton = true;
//                       });
//                       await Future.delayed(Duration(seconds: 1));
//                       // Navigator.pushNamed(context,  ));
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => HomePage()));
//                     },
//                     //if it not animated container
//                     child: AnimatedContainer
//                     (
//                       //we use ink widget here for wripple effect
//                       // child:Ink(
//                       duration: Duration(seconds: 1),
//                       width: changedButton ? 50 : 150,
//                       // child: Container(
//                       //width: 100,
//                       height: 50,
//                       // alignment: Alignment.center,

//                       //color: Colors.deepPurple,
//                       child: changedButton
//                           ? Icon(Icons.done, color: Colors.white)
//                           : Text(
//                               "Login",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),

//                       // decoration: BoxDecoration(
//                       //   color: Colors.deepPurple,
//                       //   shape: changedButton
//                       //       ? BoxShape.circle
//                       //       : BoxShape.rectangle,
//                       //   //SborderRadius: BorderRadius.circular(changedButton ?20:8)),
//                       // ),
                    
//                     ), //inner child 
//                   ),//ink well
                
//                 ),
          
          
//                 // ElevatedButton(
//                 //  child: Text("login"),
//                 //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
//                 // onPressed: (() {
//                 //     //Navigator.pushNamed(context, MyRoutes.homeRoute);
//                 //     // print('hi code print ');
//                 //   }),)
//               ],
//             ),
//           )

//           // TextFormField(
//           //   decoration: InputDecoration(
//           //     hintText: "Enter User  Name",
//           //     labelText: "Username"
//           //   ),

//           // ),
//           //  TextFormField(
//           //   decoration: InputDecoration(
//           //     hintText: "Enter Your password ",
//           //     labelText: "Password"
//           //   ),
//           //  ),
//         ],
//       ),
//     );
//   }
// }
// // return Material(
// //  child:Center(
// // child: Center(
// //   child: Text(
// //     "LoginPage",
// //   style: TextStyle(
// //     fontSize: 20,
// //     color: Colors.blue,
// //     fontWeight: FontWeight.bold,
// //   ),
// //   textScaleFactor: 2,
// //   )),
// // );
// //}
// //}

// //statelesss wegit -which has change
// //statfull --change same screen
// //contanier is a box it has no properties ,
// //if we want to cickble widget wrap it jussdected(not effect ) and inkwell show the detect
