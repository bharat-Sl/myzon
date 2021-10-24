import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myzon/Authentication/email_auth.dart';
import 'package:myzon/test/order_complete.dart';
import 'package:myzon/Authentication/sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
