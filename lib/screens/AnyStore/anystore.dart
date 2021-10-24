import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myzon/Drawer/wishlist.dart';
import 'package:myzon/Drawer/Profile/edit_profile.dart';
import 'package:myzon/Drawer/Profile/manage_address.dart';
import 'package:shimmer/shimmer.dart';

class AnyStore extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<AnyStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Image.network(
            "https://unbounce.com/photos/coming-soon.jpg",
            fit: BoxFit.cover,
          )),
    );
  }
}
