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
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.black,
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
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.yellow[700],
                      )),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          "My Rewards",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.yellow[700],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 2 / 3,
                height: MediaQuery.of(context).size.width * 2 / 3,
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.dollarSign,
                    size: 150,
                    color: Colors.yellow[700],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "EARN POINT\n",
                        style: TextStyle(
                            color: Colors.yellow[700],
                            fontSize: 36,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: "FOR EVERY DOLLAR SPENT",
                        style:
                            TextStyle(color: Colors.yellow[700], fontSize: 16))
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "150 POINTS = \$10 REWARD",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow[700]),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        "EARN",
                        style:
                            TextStyle(fontSize: 24, color: Colors.yellow[700]),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow[700]),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        "REDEEM",
                        style:
                            TextStyle(fontSize: 24, color: Colors.yellow[700]),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
