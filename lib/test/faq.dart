import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/faq_database.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 290,
            color: Colors.amber[600],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "★",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                            TextSpan(
                              text: "★",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            TextSpan(
                              text: "★",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                            TextSpan(
                              text: "★",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            TextSpan(
                              text: "★",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: MediaQuery.of(context).size.width / 2.7,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width - 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.amber[600],
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text(
                            "Search",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...FAQs.map((e) {
                    return Column(
                      children: [
                        ExpansionFAQTile(
                          title: Text(
                            e.keys.first,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                          discription: e[e.keys.first],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 3,
                          color: Colors.grey[300],
                        ),
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              launch("tel:7084188503");
            },
            child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.amber[600],
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 40,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Didn't find solution?\n",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                        TextSpan(
                          text: "Chat directly with our customer care",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ExpansionFAQTile extends StatefulWidget {
  final Widget title;
  final String discription;

  const ExpansionFAQTile({Key key, this.title, this.discription})
      : super(key: key);
  @override
  _ExpansionFAQTileState createState() => _ExpansionFAQTileState();
}

class _ExpansionFAQTileState extends State<ExpansionFAQTile> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: ExpansionTileCard(
        onExpansionChanged: (val) {
          setState(() {
            expanded = val;
          });
        },
        trailing: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              expanded
                  ? Icons.arrow_downward_outlined
                  : Icons.arrow_forward_outlined,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
        initialElevation: 0,
        elevation: 0,
        title: widget.title,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 70,
            height: 40,
            child: Text(widget.discription),
          ),
        ],
      ),
    );
  }
}
