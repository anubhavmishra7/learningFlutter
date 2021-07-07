//import 'dart:ffi';

import 'package:demo2app/pages/home_page.dart';
import 'package:demo2app/pages/login_page.dart';
import 'package:demo2app/utils/routes.dart';
import 'package:demo2app/widges/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      //color= Colors.white;

      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      initialRoute: Myroutes.homeroute,
      routes: {
        "/": (context) => LoginPage(),
        //"/home": (context) => Homepage()
        Myroutes.homeroute: (context) => Homepage(),
        Myroutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
