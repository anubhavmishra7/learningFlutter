import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leggooo"),
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
      drawer: Drawer(),
    );
  }
}
