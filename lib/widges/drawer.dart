import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp1.licdn.com/dms/image/C5603AQFmPj_zu5TITg/profile-displayphoto-shrink_800_800/0/1625691969457?e=1631750400&v=beta&t=Q8airT0Q7EjcVZgpy4j9Fh_YEiIC1yrvpiK1mrJ02NM";
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Anubhav"
                    //style: TextStyle(color: Colors.black),
                    ),
                accountEmail: Text("me@hotmail.com"
                    //style: TextStyle(color: Colors.black),
                    ),
                decoration: BoxDecoration(color: Colors.indigo),
                //margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
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
