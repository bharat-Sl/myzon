import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 80,
        leading: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 35,
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.grey[600],
              size: 28,
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.notifications_none,
            color: Colors.grey[600],
            size: 28,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3 - 30,
                        child: Column(
                          children: [
                            ...[1, 2, 3, 4, 5, 6, 7].map(
                              (e) => CategoryTile(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7 - 15,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "MEN'S APPAREL",
                                style: TextStyle(
                                    color: Colors.amber[600],
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "WOMEN'S APPAREL",
                                style: TextStyle(
                                    color: Colors.amber[600],
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  ...[1, 2, 3, 4, 5, 6, 7].map(
                                    (e) => ExpansionCategoryTile(
                                      title: Text("T-Shirt"),
                                      data: [1, 2, 3, 4],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 5,
        top: 5,
      ),
      width: MediaQuery.of(context).size.width * 0.3 - 30,
      height: MediaQuery.of(context).size.width * 0.3 - 30,
      color: Colors.amber[600],
    );
  }
}

class ExpansionCategoryTile extends StatefulWidget {
  final Widget title;
  List data;

  ExpansionCategoryTile({Key key, this.title, this.data});
  @override
  _ExpansionCategoryTileState createState() => _ExpansionCategoryTileState();
}

class _ExpansionCategoryTileState extends State<ExpansionCategoryTile> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[600],
      child: ExpansionTileCard(
        baseColor: Colors.amber[600],
        shadowColor: Colors.amber[600],
        onExpansionChanged: (val) {
          setState(() {
            expanded = val;
          });
        },
        trailing: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              expanded
                  ? Icons.keyboard_arrow_up_outlined
                  : Icons.keyboard_arrow_down,
              color: Colors.amber,
              size: 30,
            ),
          ),
        ),
        initialElevation: 0,
        elevation: 0,
        title: widget.title,
        children: [
          Container(
            height: 180,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.black,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.black,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.black,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.black,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
