import 'package:flutter/material.dart';
import 'package:gohdong/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  GlobalKey materialKey = GlobalKey<MyAppState>();
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: materialKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light),
      home: Home(parentKey: materialKey,),
    );
  }


}
