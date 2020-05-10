import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home.dart';

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.black,
      seconds: 3,
      image: Image.asset(
        'assets/logo.jpg',
      ),
      loadingText: Text(
        "Version 1.0",
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Combo',
            fontWeight: FontWeight.normal),
      ),
      loaderColor: Colors.black,
      photoSize: 100,
      navigateAfterSeconds: HomePage(),
    );
  }
}
