import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyRewards extends StatefulWidget {
  @override
  _MyRewardsState createState() => _MyRewardsState();
}

class _MyRewardsState extends State<MyRewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back)),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          "My Rewards",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 2 / 3,
                height: MediaQuery.of(context).size.width * 2 / 3,
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.dollarSign,
                    size: 150,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "   EARN POINT\n",
                        style: TextStyle(color: Colors.black, fontSize: 36)),
                    TextSpan(
                        text: "FOR EVERY DOLLAR SPENT",
                        style: TextStyle(color: Colors.black, fontSize: 20))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("150 POINTS = \$10 REWARD"),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        "EARN",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        "REDEEM",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
