import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gohdong/color.dart';
import 'package:gohdong/main.dart';

class Home extends StatefulWidget {
  final GlobalKey<MyAppState> parentKey;

  Home({this.parentKey});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height = 0;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              floating: false,
              elevation: 0,
              expandedHeight: MediaQuery.of(context).size.height,
              backgroundColor: MyColor.blue,
              collapsedHeight: 56,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                height = constraints.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    height == 56 ? "DONGHYUN's WORLD" : "",
                    style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),
                  ),
                  background: Container(
                    padding: EdgeInsets.all(30),
                    decoration:BoxDecoration(
                      // color: Colors.orange
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [MyColor.blue,MyColor.blue2]
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        AutoSizeText(
                          "DongHyun Goh's",
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 7),
                        ),
                        AutoSizeText(
                          "Development",
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 7),
                        ),


                        AutoSizeText(
                          "Portfolio",
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 7),
                        ),
                      ],
                    ),
                  ),
                );
              })),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ,
            )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
      ),
    );
  }
}
