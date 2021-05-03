import 'package:flutter/material.dart';
import 'package:gohdong/home.dart';
import 'package:gohdong/splash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark),
      routes: {
        "/": (context) => SplashScreen(),
        // "/root" : (context) => Root(),
        "/home": (context) => Home(),
      },
      initialRoute: "/",
    );
  }


}
