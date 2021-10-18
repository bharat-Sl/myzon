import 'package:flutter/material.dart';

class OrderComplete extends StatefulWidget {
  @override
  _OrderCompleteState createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.chevron_left,
              size: 40,
              color: Colors.amber[600],
            ),
          ),
          title: Text(
            "Order Placed",
            style: TextStyle(
              color: Colors.amber[600],
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.amber[400],
            ),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.amber[400],
            ),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.amber[400],
            ),
            SizedBox(
              width: 7,
            ),
          ],
        ),
        body: Container(
          color: Colors.grey[100],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  bottom: 30,
                  child: Column(
                    children: [
                      Text(
                        "Success!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Your order will be delivered soon.\nThank you for choosing our app!",
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.amber[600],
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Center(
                          child: Text(
                            "Continue Shopping",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
