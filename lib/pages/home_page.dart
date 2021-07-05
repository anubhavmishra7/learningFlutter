import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  //const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        actions: [Icon(Icons.login), Icon(Icons.logout)],
        //leading: Icon(Icons.holiday_village),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Home Screen',
            style: TextStyle(
                fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      //for adding drawer in appbar => drawer: Drawer(),

      drawer: Drawer(
        child: Column(
          children: [Container()],
        ),
      ),
    );
  }
}
