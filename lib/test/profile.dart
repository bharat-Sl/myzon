import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(87, 238, 231, 1),
            Color.fromRGBO(7, 148, 131, 1)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "My Account",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 70,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Darlene Reberston",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 22),
                    ),
                    Text(
                      "Active status",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 65,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Manage Address",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 65,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.heart_solid,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Wishlist",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 65,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.doc_on_clipboard,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Order History",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 65,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Cards",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 65,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
