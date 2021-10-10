import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myzon/screens/cart.dart';
import 'package:myzon/screens/home.dart';
import 'package:myzon/screens/language_selector.dart';
import 'package:myzon/screens/rewards.dart';
import 'package:myzon/screens/wishlist.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CarouselController buttonCarouselController = CarouselController();
  int index = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () => _scaffoldKey.currentState.openDrawer(),
                        child: Container(
                          width: 30,
                          child: Image.asset("assets/images/9.png"),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        child: Text("MYZON\nSALES.com"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 30,
                        child: Image.asset("assets/images/5.png"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 30,
                        child: Image.asset("assets/images/6.png"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 35,
                        child: Image.asset("assets/images/7.png"),
                      ),
                      Container(
                        width: 62,
                        child: Image.asset("assets/images/8.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            [
              Home(),
              Container(),
              Container(),
              Container(),
            ][index],
          ],
        ),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 4.7 / 7,
        child: Drawer(
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.yellow[600],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: (MediaQuery.of(context).size.width -
                                            50) /
                                        9,
                                    child: Image.asset(
                                      "assets/images/17.png",
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "HOME",
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " Hello",
                              style: TextStyle(fontSize: 27),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("assets/images/30.png"),
                        )
                      ],
                    ),
                    Text(
                      " Raju Sharma",
                      style: TextStyle(fontSize: 27),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/images/22.png")),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "All Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => LanguageSelector(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/23.png")),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Select Language",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Cart(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/24.png")),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "View Cart",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyRewards(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/25.png")),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "My Rewards",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Wishlist(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/5.png")),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "My Wishlist",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/images/21.png")),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "My Account",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/images/6.png")),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Notification",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/images/26.png")),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Chat Box",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                height: 3,
                width: MediaQuery.of(context).size.width * 4 / 7,
                color: Colors.red,
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Text(
                  "Help Center",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Text(
                  "Notifications Preference",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Text(
                  "Legal",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  index = 0;
                });
                print(index);
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 9,
                        child: Image.asset("assets/images/17.png")),
                    Text(
                      "HOME",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 9,
                        child: Image.asset("assets/images/18.png")),
                    Text(
                      "ANY STORE",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 50) / 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 6,
                        child: Image.asset("assets/images/19.png")),
                    Text(
                      "QUALITY CLAIM",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 3;
                });
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 9,
                        child: Image.asset("assets/images/20.png")),
                    Text(
                      "MZS WALLET",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  index = 4;
                });
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 50) / 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 9,
                        child: Image.asset("assets/images/21.png")),
                    Text(
                      "PROFILE",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
