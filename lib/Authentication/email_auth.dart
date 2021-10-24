import 'package:flutter/material.dart';
import 'package:myzon/screens/dashboard.dart';
import 'package:myzon/Drawer/Profile/profile.dart';

class EmailAuth extends StatefulWidget {
  @override
  _EmailAuthState createState() => _EmailAuthState();
}

class _EmailAuthState extends State<EmailAuth> {
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
            color: Colors.amber[600],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.grey[100],
              child: Image.asset("assets/images/conform.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.4),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Confirm your email address",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 21),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We sent a confirmation email to:",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "YourName@email.com",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 21),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Check your email and click on the\nconfirmation link to continue",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ),
                );
              },
              child: Text(
                "Resend email",
                style: TextStyle(
                    color: Colors.amber[500],
                    fontSize: 19,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
