import 'package:flutter/material.dart';

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
        body: Container(
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
              Container(
                width: MediaQuery.of(context).size.width - 60,
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(children: [
                  Icon(
                    Icons.location_pin,
                    size: 18,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "3000 20th st (at Florida St), San Francisco",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
