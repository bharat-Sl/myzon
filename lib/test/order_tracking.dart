import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderTracking extends StatefulWidget {
  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.chevron_left,
              size: 40,
              color: Colors.amber[600],
            ),
            Text(
              "Tracking",
              style: TextStyle(
                color: Colors.amber[600],
                fontSize: 26,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey[600],
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.grey[800],
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey,
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order #66158413",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "Pantaloons Women's High Low Dark Blue Dress",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        ),
                        Text("Exp. Delivery by Sun, June 11")
                      ],
                    ),
                  ),
                ),
                Text("COD \$99.00"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey[400],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.amber[600], shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Order Placed\n",
                          style: TextStyle(
                              color: Colors.amber[600],
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: "June 10, 2018 | 03:45 pm",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w800),
                        )
                      ]),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 28),
                  height: 50,
                  width: 3,
                  color: Colors.amber[600],
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.amber[600], shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.hourglass_empty_sharp,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Order Dispatched\n",
                          style: TextStyle(
                              color: Colors.amber[600],
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: "June 11, 2018 | 11:45 am",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w800),
                        )
                      ]),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 28),
                  height: 50,
                  width: 3,
                  color: Colors.amber[600],
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.amber[600], shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.truck,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Order in transit\n",
                          style: TextStyle(
                              color: Colors.amber[600],
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: "Reached at Jackline Tower, New York",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w800),
                        )
                      ]),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 28),
                  height: 50,
                  width: 3,
                  color: Colors.amber[600],
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: false ? Colors.amber[600] : Colors.amber[100],
                          shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.thumb_up,
                          color: !false ? Colors.amber[600] : Colors.amber[100],
                          size: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Order Placed\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: "June 10, 2018 | 03:45 pm",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 14,
                              fontWeight: FontWeight.w800),
                        )
                      ]),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
