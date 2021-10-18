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

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  CarouselController buttonCarouselController = CarouselController();
  TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).viewPadding.top,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () => _scaffoldKey.currentState.openDrawer(),
                        child: Icon(
                          Icons.menu,
                          size: 30,
                        )),
                    Container(
                      width: 62,
                      child: Image.asset("assets/images/8.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 120,
                      child: Text("MYZON\nSALES.com"),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.search),
                          Icon(Icons.notifications_active_rounded),
                          Icon(Icons.favorite),
                          Icon(Icons.shopping_cart),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                    controller: _tabController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Home(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      child: TabBar(
                        controller: _tabController,
                        indicator: UnderlineTabIndicator(
                            insets: EdgeInsets.symmetric(horizontal: 10),
                            borderSide: BorderSide(
                              width: 6.0,
                              color: Colors.transparent,
                            )),
                        labelColor: Colors.green[700],
                        labelPadding: EdgeInsets.zero,
                        labelStyle: TextStyle(fontWeight: FontWeight.w900),
                        unselectedLabelColor: Colors.deepOrange[600],
                        tabs: [
                          Tab(
                            text: "Home",
                            icon: Icon(
                              Icons.home,
                              color: _tabController.index == 0
                                  ? Colors.green[700]
                                  : Colors.deepOrange[600],
                              size: 30,
                            ),
                          ),
                          Tab(
                            text: "Any Store",
                            icon: Icon(
                              Icons.storefront,
                              color: _tabController.index == 1
                                  ? Colors.green[700]
                                  : Colors.deepOrange[600],
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Tab(
                            text: "Wallet",
                            icon: Icon(
                              Icons.account_balance_wallet,
                              color: _tabController.index == 3
                                  ? Colors.green[700]
                                  : Colors.deepOrange[600],
                              size: 30,
                            ),
                          ),
                          Tab(
                            text: "Profile",
                            icon: Icon(
                              Icons.account_circle,
                              color: _tabController.index == 4
                                  ? Colors.green[700]
                                  : Colors.deepOrange[600],
                              size: 30,
                            ),
                          ),
                        ],
                        onTap: (int index) {
                          _tabController.index = index;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
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
                                      width:
                                          (MediaQuery.of(context).size.width -
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Text(
                    "Help Center",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Text(
                    "Notifications Preference",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Text(
                    "Legal",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: FloatingActionButton(
            backgroundColor: Colors.deepOrange[600],
            child: Icon(
              Icons.camera,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {},
          ),
        ),
      ),
    );
  }
}
