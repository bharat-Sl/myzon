import 'package:flutter/material.dart';

class CitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cities"),
        elevation: 0,
        backgroundColor: Colors.amber[900],
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 50) / 3,
                  child: Image.asset("assets/images/4.png"),
                ),
                SizedBox(height: 4),
                Container(
                    width: (MediaQuery.of(context).size.width - 50) / 3,
                    child: Text(
                      "WEST BENGAL",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
