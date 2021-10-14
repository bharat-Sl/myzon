import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Image.asset("assets/images/4.png"),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Image.asset("assets/images/3.png"),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Image.asset("assets/images/2.png"),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Image.asset("assets/images/1.png"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: (MediaQuery.of(context).size.width - 50) / 4,
                    child: Text(
                      "WEST BENGAL",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Text(
                    "DELHI",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Text(
                    "KARNATKA",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  child: Text(
                    "MAHARASHTRA",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
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
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
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
      ),
    );
  }
}
