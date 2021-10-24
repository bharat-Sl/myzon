import 'package:flutter/material.dart';
import 'package:myzon/components/wishlist_tile.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
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
                          "WISHLIST",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow[700],
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
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        border: Border.all(color: Colors.yellow[700])),
                    child: Center(
                      child: Text(
                        "All item",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow[700])),
                    child: Center(
                      child: Text(
                        "Boards",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.yellow[700],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...[1, 2, 3, 4, 5, 6].map((e) => WishlistTile())
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
