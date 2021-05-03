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
              backgroundColor: Colors.transparent,
              collapsedHeight: 56,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                height = constraints.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "",
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  ),
                  background: Container(
                    padding: EdgeInsets.all(30),
                    height: height,
                    decoration: BoxDecoration(
                        // color: Colors.orange
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [MyColor.blue2, MyColor.blue])),
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
            color: MyColor.blue,
            // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.33,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  Image.asset('img/my_photo.jpeg').image,
                              fit: BoxFit.fitWidth,
                            ),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(height: 50,),
                      Text("DongHyun Goh",style: TextStyle(
                        color: Colors.white,
                        fontSize: 56
                      ),)
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                )
              ],
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
