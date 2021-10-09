import 'package:flutter/material.dart';

class LanguageTile extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;

  const LanguageTile({
    Key key,
    this.color = Colors.deepPurpleAccent,
    this.text1,
    this.text2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      width: 170,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 15,
            child: Text(
              text1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Text(
              text2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
