//import 'dart:html';

import 'package:demo2app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Container 1
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                height: 250,
              ),

              SizedBox(
                height: 20,
              ),

              //Container 2

              Text(
                "Context",
                style: TextStyle(
                    fontSize: 30,
                    // fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textScaleFactor: 1.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          // print("Aur bhai ki haal chaal");
                          Navigator.pushNamed(context, Myroutes.homeroute);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: Size(100, 40)),
                        child: Text("Login"))
                  ],
                ),
              )
            ],
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
