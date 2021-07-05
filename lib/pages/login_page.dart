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
  @override
  Widget build(BuildContext context) {
    return Material(
        //color: Colors.white, for whole login page
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 40,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeinButton = true;
                    });

                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, Myroutes.homeroute);
                  },
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
                    decoration: BoxDecoration(
                        // shape:
                        //     changeinButton ? BoxShape.circle : BoxShape.rectangle,

                        color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(changeinButton ? 25 : 7)),
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
