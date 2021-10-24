import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Privacy Policy",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We want you to know exactly how mobile service work and why we need your details. Reviewing our policy will help you continue using the app with piece of mind.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              ExpansionFAQTile(
                title: Text(
                  "What information do we collect about you?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ExpansionFAQTile(
                title: Text(
                  "What information do we collect about you?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ExpansionFAQTile(
                title: Text(
                  "What information do we collect about you?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ExpansionFAQTile(
                title: Text(
                  "What information do we collect about you?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ExpansionFAQTile(
                title: Text(
                  "What information do we collect about you?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Effective from May, 2021",
                style: TextStyle(
                  color: Color.fromRGBO(0, 137, 121, 1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpansionFAQTile extends StatefulWidget {
  final Widget title;

  const ExpansionFAQTile({Key key, this.title}) : super(key: key);
  @override
  _ExpansionFAQTileState createState() => _ExpansionFAQTileState();
}

class _ExpansionFAQTileState extends State<ExpansionFAQTile> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 1,
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        onExpansionChanged: (val) {
          setState(() {
            expanded = val;
          });
        },
        collapsedBackgroundColor: Color.fromRGBO(0, 137, 121, 1),
        backgroundColor: Color.fromRGBO(0, 137, 121, 1),
        trailing: Container(
          width: 40,
          height: 40,
          child: Center(
            child: Icon(
              expanded ? Icons.horizontal_rule_outlined : Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        title: widget.title,
        children: [
          Container(
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 70,
              height: 40,
              child: Text(
                "Discription",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
