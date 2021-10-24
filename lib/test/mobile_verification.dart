import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MobileVerification extends StatefulWidget {
  @override
  _MobileVerificationState createState() => _MobileVerificationState();
}

class _MobileVerificationState extends State<MobileVerification> {
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
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/otp.png"),
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
                          text: "We will send you on ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "One Time Password\n",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: "On this mobile number",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                        width: 2,
                      ),
                    ),
                    child: CountryListPick(
                        appBar: AppBar(
                          backgroundColor: Colors.blue,
                          title: Text('Choose your Country Code'),
                        ),

                        // To disable option set to false
                        theme: CountryTheme(
                          isShowFlag: true,
                          isShowTitle: true,
                          isShowCode: true,
                          isDownIcon: true,
                          showEnglishName: true,
                        ),
                        initialSelection: '+91',
                        onChanged: (CountryCode code) {
                          print(code.name);
                          print(code.code);
                          print(code.dialCode);
                          print(code.flagUri);
                        },
                        // Whether to allow the widget to set a custom UI overlay
                        useUiOverlay: true,
                        // Whether the country list should be wrapped in a SafeArea
                        useSafeArea: false),
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                        width: 2,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          counterText: ""),
                      textAlign: TextAlign.center,
                      cursorColor: Colors.amber,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLength: 10,
                    ),
                  ),
                  SizedBox(height: 80),
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
