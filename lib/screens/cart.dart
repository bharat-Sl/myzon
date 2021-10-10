import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:myzon/components/order_item_tile.dart';

class Cart extends StatefulWidget {
  const Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
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
                            "View Cart",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
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
                  height: 10,
                ),
                Text(
                  "Delivery Detail",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  color: Colors.grey[200].withOpacity(0.7),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(children: [
                    Icon(
                      Icons.location_pin,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "3000 20th st (at Florida St), San Francisco",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ]),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  color: Colors.grey[200].withOpacity(0.7),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(children: [
                    Icon(
                      Icons.phone,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(603)555-0123",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Order List",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                OrderItemTile(),
                OrderItemTile(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Promo Code",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200].withOpacity(0.7),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "MAKANYUKX",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "APPLY",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow[600]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 8.0),
                  child: Text(
                    "Voucher applied!",
                    style: TextStyle(
                        color: Colors.yellow[600], fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Order summary",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order Amount",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "70.00",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Fee",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "6.00",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discount",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "-10.00",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                DottedLine(
                  dashColor: Colors.yellow[600],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOTAL\nRS 66.00",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow[600]),
                      child: Text(
                        "Payment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        ));
  }
}
