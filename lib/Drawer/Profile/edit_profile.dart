import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.chevron_left,
            size: 40,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            child: Center(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: 8,
              color: Colors.grey[200],
            )),
          )),
          Center(
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
          Expanded(child: Container()),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey[300], blurRadius: 3, offset: Offset(0, 3))
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                      color: Colors.amber[600],
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: "Full Name"),
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey[300], blurRadius: 3, offset: Offset(0, 3))
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact",
                  style: TextStyle(
                      color: Colors.amber[600],
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: "Contact Number"),
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey[300], blurRadius: 3, offset: Offset(0, 3))
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email Address",
                  style: TextStyle(
                      color: Colors.amber[600],
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: "Email"),
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(flex: 2, child: Container()),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Text(
                "UPDATE PROFILE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
