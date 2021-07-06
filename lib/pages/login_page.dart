//import 'dart:html';

import 'package:demo2app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeinButton = false;
  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeinButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeroute);
      setState(() {
        changeinButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        //color: Colors.white, for whole login page
        child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            //Container 1
            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.cover,
              height: 250,
            ),

            SizedBox(
              height: 20,
            ),

            //Container 2

            Text(
              "Context $name",
              style: TextStyle(
                  fontSize: 30,
                  // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textScaleFactor: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cant be empty";
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
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cant be empty";
                      } else if (value.length < 6) {
                        return "Password length should be greater than 6";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Material(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.circular(changeinButton ? 25 : 7),
                    child: InkWell(
                      //splashColor: Colors.blue,
                      onTap: () => movetoHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeinButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeinButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),

                        // decoration: BoxDecoration(
                        //     // shape:
                        //     //     changeinButton ? BoxShape.circle : BoxShape.rectangle,

                        //     color: Colors.red,
                        //     borderRadius:
                        //         BorderRadius.circular(changeinButton ? 25 : 7)),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //     onPressed: () {
                  //       // print("Aur bhai ki haal chaal");
                  //       Navigator.pushNamed(context, Myroutes.homeroute);
                  //     },
                  //     style: TextButton.styleFrom(
                  //         backgroundColor: Colors.red,
                  //         minimumSize: Size(100, 40)),
                  //     child: Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// Inserting Text Widget
//    child: Center(
//         child: Text(
//           "Login Page",
//           style: TextStyle(
//               fontSize: 40,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.bold,
//               color: Colors.blue),
//           textScaleFactor: 1.0,
//         ),
//       ),
