import 'package:demo2app/models/catalog.dart';
import 'package:demo2app/widges/drawer.dart';
import 'package:demo2app/widges/item_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  //const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(7, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        //elevation: 0,
        title: Text(
          "Catalog",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // backgroundColor: Colors.white,
        actions: [Icon(Icons.login), Icon(Icons.logout)],
        //leading: Icon(Icons.holiday_village),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         'this here is a Homescreen',
      //         style: TextStyle(
      //           fontSize: 19,
      //           color: Colors.black,
      //           //fontWeight: FontWeight.bold),
      //         ),
      //       )

      //       // Image(image: image)
      //     ],
      //   ),
      // ),

      //for adding drawer in appbar => drawer: Drawer(),

      drawer: Mydrawer(),
    );
  }
}
