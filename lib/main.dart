import 'dart:ffi';

import 'package:demo2app/pages/home_page.dart';
import 'package:demo2app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //commenting this home:Homepage() becauss homepage directory is used in routes
      //home: Homepage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(
          //brightness: Brightness.dark,
          //primarySwatch: Colors.brown),
          ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
