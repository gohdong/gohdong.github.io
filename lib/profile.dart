import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  final String backGroundImg;
  final String profileImg;
  final List<Widget> actions;

  const ProfileDetail(
      {Key key, this.backGroundImg = "", this.profileImg = "", this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(backGroundImg).image,
                fit: BoxFit.fitHeight
              )
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          // GestureDetector(
          //   on
          // )
        ],
      ),
    );
  }
}
