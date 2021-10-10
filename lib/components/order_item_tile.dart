import 'package:flutter/material.dart';

class OrderItemTile extends StatelessWidget {
  const OrderItemTile({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 100,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(),
                    image: DecorationImage(image: NetworkImage(""))),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Package1",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "35.00",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey[200],
                    ),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "—",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey[200],
                    ),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey[200],
                    ),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
