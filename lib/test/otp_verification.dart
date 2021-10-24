import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerification extends StatefulWidget {
  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 309 / 515,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/curve2.png"),
                      fit: BoxFit.fitWidth)),
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 35,
            child: Align(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/msg.png"),
                        fit: BoxFit.fitWidth)),
              ),
            ),
          ),
          Positioned(
            top: 320,
            child: Align(
              child: Column(
                children: [
                  Text(
                    "OTP Verification",
                    style: TextStyle(
                        color: Colors.amber[400],
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
                  ),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Enter the OTP sent your number",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 125),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 100,
                    child: PinCodeTextField(
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        activeColor: Colors.amber,
                        disabledColor: Colors.amber,
                        inactiveColor: Colors.amber,
                        errorBorderColor: Colors.amber,
                        inactiveFillColor: Colors.amber,
                        selectedColor: Colors.amber,
                        shape: PinCodeFieldShape.box,
                        fieldHeight: 60,
                        fieldWidth: 60,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {});
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    "Didn't Recieve OTP?",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    "RESEND OTP",
                    style: TextStyle(
                        color: Colors.amber[500],
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 160,
                    decoration: BoxDecoration(
                      color: Colors.amber[400],
                      border: Border.all(
                        color: Colors.amber,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "SEND OTP",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 3,
                            fontSize: 28,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
