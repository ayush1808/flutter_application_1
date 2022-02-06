import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageurl = "https://unsplash.com/photos/txX3cXgiAzU";
    return Drawer(
      backgroundColor: Colors.purple,
      child: ListView(
          padding: EdgeInsets.zero,
          addAutomaticKeepAlives: true,
          scrollDirection: Axis.vertical,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountEmail: Text(
                  "aaron.jain001@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                accountName: Text(
                  "Ayush Choudhary",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.black),
              title: Text(
                "profile",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.black),
              title: Text(
                "email",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ]),
    );
  }
}
