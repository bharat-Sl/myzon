import 'package:flutter/material.dart';
import 'package:myzon/test/product_details.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 35,
          ),
        ),
        title: Text(
          "My Cart",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.shopping_bag,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...[1, 2, 3, 4, 5, 6, 7, 8, 9, 0].map(
                    (e) => ItemWidget(
                      update: _update,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.amber[600],
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${ItemWidget.numItems} items |  \$${ItemWidget.sum}",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      "From: Tipsy Family Restaurant",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
                Text(
                  "VIEW CART",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _update(int a) {
    setState(() {});
  }
}

class ItemWidget extends StatefulWidget {
  static int sum = 0;
  static int numItems = 0;
  final ValueChanged<int> update;

  const ItemWidget({Key key, this.update}) : super(key: key);
  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => ProductDetails(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 2, top: 2),
        width: MediaQuery.of(context).size.width,
        height: 110,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(
                  color: Colors.amber[600],
                  width: 3,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Round Neck Dresses",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.amber[600],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$25.68",
                    style: TextStyle(
                        color: Colors.amber[700], fontWeight: FontWeight.w900),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      num == 0
                          ? SizedBox()
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  widget.update(1);
                                  num -= 1;
                                  ItemWidget.sum -= 9999;
                                  ItemWidget.numItems -= 1;
                                });
                              },
                              child: Text(
                                "—",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            widget.update(1);
                            num += 1;
                            ItemWidget.sum += 9999;
                            ItemWidget.numItems += 1;
                          });
                        },
                        child: Text(
                          num.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            widget.update(1);
                            num += 1;
                            ItemWidget.sum += 9999;
                            ItemWidget.numItems += 1;
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
