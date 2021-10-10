import 'package:flutter/material.dart';

class WishlistTile extends StatefulWidget {
  const WishlistTile({Key key}) : super(key: key);

  @override
  _WishlistTileState createState() => _WishlistTileState();
}

class _WishlistTileState extends State<WishlistTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.yellow[700],
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Image.network(
                    "https://www.byrdie.com/thmb/XfwC1hjGlTSabbsBbV-OFJE-zq0=/800x800/filters:no_upscale():max_bytes(150000):strip_icc()/scarves2-d1fde5f105ed46c3861f01a037b9f517.jpg")),
            SizedBox(
              width: 30,
            ),
            Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Black line scarf",
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "item ID: 1098734",
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Scarves",
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "\$21.95",
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.w900,
                          fontSize: 21),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
