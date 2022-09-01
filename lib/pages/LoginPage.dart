import 'package:flutter/material.dart';
import 'package:flutter_application_3/utills/routes.dart';
import 'package:velocity_x/velocity_x.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    //if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
   // }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      
      //color: Colors.white, //for image match colour
      child: SingleChildScrollView(
        //wrap in  from to login propetties
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 300,
                width: 400,
                //              heig3ht: 400,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User  Name", labelText: "Username"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "user name not empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter User  Password",
                          labelText: "Psssword"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "user password not empty";
                        } else if (value.length < 6) {
                          return "length sould be atleast 6 ";
                        }
                        return null;
                      },
                    ),

                    SizedBox(
                      height: 40.0,
                    ),

                    //using conatainer
                    Material(
                      color:context.theme.buttonColor,// Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 10),
                      child: InkWell(
                        //splashColor: Colors.red,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          width: changeButton ? 50 : 100,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton //after change icon
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),

                          // //we use color properties up
                          // decoration: BoxDecoration(
                          //     color: Colors.deepPurple,
                          //     //shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                          //     borderRadius:
                          //         BorderRadius.circular(changeButton ? 50 : 10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(120, 40),
                      ),
                      onPressed: () {
                        //print('learn with sam ');
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
