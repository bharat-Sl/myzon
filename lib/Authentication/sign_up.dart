import 'package:flutter/material.dart';
import 'package:myzon/Authentication/email_auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.chevron_left,
            size: 40,
            color: Colors.white,
          ),
        ),
        title: Text(
          "SIGN UP",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).viewPadding.vertical -
              60,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 3.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  labelText: "Name",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 3.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 3.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  labelText: "Mobile",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 3.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 3.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber[600], width: 2.0),
                  ),
                  labelText: "Retype Password",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EmailAuth(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 2 / 3.2,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.amber[600],
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber[200],
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
