import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myzon/screens/Home/cities_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.amberAccent[100],
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width - 50) / 5.5,
                        child: Image.asset("assets/images/4.png"),
                      ),
                      Container(
                          width: (MediaQuery.of(context).size.width - 50) / 4,
                          child: FittedBox(
                            child: Text(
                              "WEST BENGAL",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width - 50) / 5.5,
                      child: Image.asset("assets/images/4.png"),
                    ),
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 4,
                        child: Text(
                          "WEST BENGAL",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width - 50) / 5.5,
                      child: Image.asset("assets/images/4.png"),
                    ),
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 4,
                        child: Text(
                          "WEST BENGAL",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width - 50) / 5.5,
                      child: Image.asset("assets/images/4.png"),
                    ),
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 4,
                        child: Text(
                          "WEST BENGAL",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return CitiesScreen();
                        },
                      ));
                    },
                    child: Icon(Icons.forward, color: Colors.black87)),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width - 100) / 4,
                child: Image.asset("assets/images/10.png"),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 100) / 4,
                child: Image.asset("assets/images/11.png"),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 100) / 4,
                child: Image.asset("assets/images/12.png"),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 100) / 4,
                child: Image.asset("assets/images/Untitled-1.png"),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Text(
                    "WOMEN",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  )),
              Container(
                width: (MediaQuery.of(context).size.width - 50) / 4,
                child: Text(
                  "MEN",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 50) / 4,
                child: Text(
                  "BEAUTY",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 50) / 4,
                child: Text(
                  "ACCESSORIES",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            child: CarouselSlider(
              items: [
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 241, 241, 1),
                  child: Image.asset("assets/images/card.jpg"),
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 241, 241, 1),
                  child: Image.asset("assets/images/card.jpg"),
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 241, 241, 1),
                  child: Image.asset("assets/images/card.jpg"),
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 241, 241, 1),
                  child: Image.asset("assets/images/card.jpg"),
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 241, 241, 1),
                  child: Image.asset("assets/images/card.jpg"),
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 241, 241, 1),
                  child: Image.asset("assets/images/card.jpg"),
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Color.fromRGBO(247, 241, 241, 1),
                  child: Image.asset("assets/images/card.jpg"),
                ),
              ],
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: _current != 0 ? Colors.grey : Colors.yellow,
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: _current != 1 ? Colors.grey : Colors.yellow,
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: _current != 2 ? Colors.grey : Colors.yellow,
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: _current != 3 ? Colors.grey : Colors.yellow,
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: _current != 4 ? Colors.grey : Colors.yellow,
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: _current != 5 ? Colors.grey : Colors.yellow,
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: _current != 6 ? Colors.grey : Colors.yellow,
                    shape: BoxShape.circle),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width - 50) / 2,
                color: Color.fromRGBO(247, 241, 241, 1),
                child: Image.asset("assets/images/card1.jfif"),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 50) / 2,
                color: Color.fromRGBO(247, 241, 241, 1),
                child: Image.asset("assets/images/card2.jfif"),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
