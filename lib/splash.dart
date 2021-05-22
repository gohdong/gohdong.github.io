import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gohdong/home.dart';
import 'package:transparent_image/transparent_image.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _everySecond;

  bool visible = false;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(milliseconds: 50), (timer) {
      timer.cancel();
      visible = true;
    });
    _everySecond = Timer.periodic(
      Duration(milliseconds: 2000),
          (Timer t) {
        _everySecond.cancel();
          Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => Home(),));
        }

    );
  }

  @override
  void dispose() {
    super.dispose();
    _everySecond.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: Image.asset('assets/img/splash.png').image,
        //         fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: FadeInImage(
                  image: Image.asset('img/talk.png').image,
                  fadeInDuration: Duration(seconds: 1),
                  placeholder: Image.memory(kTransparentImage).image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
