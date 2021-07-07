import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp3.licdn.com/dms/image/C5603AQEaOPt6K-mwPQ/profile-displayphoto-shrink_200_200/0/1620864579077?e=1628726400&v=beta&t=vIbJfBK7ennqAY7DTHx7OzpSllo4uQZ-iP3TtEtbmj8";
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Anubhav",
                    //style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "me@hotmail.com",
                    //style: TextStyle(color: Colors.black),
                  ),
                  decoration: BoxDecoration(color: Colors.indigo),
                  //margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.play_arrow_solid, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail_solid, color: Colors.white),
              title: Text(
                "Email",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
