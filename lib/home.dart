import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gohdong/color.dart';
import 'package:gohdong/main.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.black,
        title: Text(
          "포트폴리오",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.github),
            onPressed: () async {
              await launch('https://github.com/gohdong');
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.userPlus,
              size: 20,
            ),
            onPressed: () async {
              await launch('https://github.com/gohdong');
            },
          ),
          SizedBox(
            width: 20,
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: Container(
        color: MyColor.black,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            myProfile(),
            Divider(
              height: 40,
            ),
            myCareer(),
            Divider(
              height: 40,
            ),
            myProject(),
            Divider(
              height: 40,
            ),
            myAward()
          ],
        ),
      ),
    );
  }



  Widget myProfile() {
    return Row(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(38),
              image: DecorationImage(
                  image: Image.asset('img/my_photo.jpeg').image,
                  fit: BoxFit.fitWidth)),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "고동현",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "DongHyun Goh",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        Expanded(child: Container()),
        actionLikeMelon("Nothing I Can\'t Make", Icons.thumb_up_alt_outlined,)
      ],
    );
  }

  Widget myCareer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "경력",
          style: TextStyle(
              color: MyColor.grey, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        profileCell(
          imgPath: 'img/high_school.jpeg',
          title: "천안쌍용고등학교",
          subTitle: "2012.03 ~ 2015.02",
            actions: actionLikeMelon('자연계열',  FontAwesomeIcons.vial)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
          imgPath: 'img/university.png',
          title: "한양대학교 ERICA",
          subTitle: "2016.03 ~ ",
          actions: actionLikeMelon('소프트웨어학부 컴퓨터전공',  FontAwesomeIcons.fileCode),
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/army.png',
            title: "육군 제 75사단",
            subTitle: "2017.04 ~ 2019.01",
            actions: actionLikeMelon(
                '무선장비운용병 병장 만기전역', FontAwesomeIcons.crosshairs)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/funani.png',
            title: "TEAM FUNANI",
            subTitle: "2019.08 ~ 2021.04",
            actions: actionLikeMelon(
                '대표', FontAwesomeIcons.bomb)),
      ],
    );
  }

  Widget profileCell({
    String imgPath = "",
    String title = "tt",
    String subTitle = "",
    Widget actions,
  }) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
              image: DecorationImage(
                image: Image.asset(imgPath).image,
                fit: BoxFit.fitWidth,
              )),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        Expanded(child: Container()),
        actions == null ? Container() : actions
      ],
    );
  }

  Widget myProject(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "프로젝트",
          style: TextStyle(
              color: MyColor.grey, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        profileCell(
            imgPath: 'img/selab.png',
            title: "SE Lab",
            subTitle: "2019.10 ~ 2019.12",
            actions: actionLikeMelon('대학 연구실 어플리케이션',  FontAwesomeIcons.flask)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
          imgPath: 'img/gva.png',
          title: "GVA",
          subTitle: "2019.10 ~ 2019.12",
          actions: actionLikeMelon('영화예매 어플리케이션',  FontAwesomeIcons.film),
        ),SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/tablebox.png',
            title: "테이블 박스",
            subTitle: "2019.12 ~ 2020.03",
            actions: actionLikeMelon(
                '모바일 키오스크 서비스', FontAwesomeIcons.utensils)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/daon.png',
            title: "잇다온",
            subTitle: "2020.04 ~ 2020.04",
            actions: actionLikeMelon(
                '경기도 지역화폐 지도', FontAwesomeIcons.mapMarkerAlt)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/daeshelin.png',
            title: "대슐랭가이드",
            subTitle: "2020.06 ~ 2020.08",
            actions: actionLikeMelon(
                '대학상권 먹거리 커뮤니티', FontAwesomeIcons.iceCream)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/fingerprint.png',
            title: "핑거프린트",
            subTitle: "2020.08 ~ 2020.10",
            actions: actionLikeMelon(
                'O2O 클라우드 프린팅 서비스', FontAwesomeIcons.print)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/funanifarm.png',
            title: "펴나니팜",
            subTitle: "2020.09 ~ 2021.04",
            actions: actionLikeMelon(
                'IoT를 이용한 버섯 재배 컨테이너', FontAwesomeIcons.seedling)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/workertalkie.png',
            title: "워커토키",
            subTitle: "2020.12 ~ 2021.02",
            actions: actionLikeMelon(
                '알바생과 사장님을 잇는 직원관리 솔루션', FontAwesomeIcons.link)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/agora.png',
            title: "에이고라",
            subTitle: "2021.01 ~ 2021.01",
            actions: actionLikeMelon(
                '단 1분만 존재하는 채팅 서비스', FontAwesomeIcons.comment)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/flutter.png',
            title: "Day Night Time Picker",
            subTitle: "2021.02 ~ 2021.02",
            actions: actionLikeMelon(
                '애니메이션이 함께 있는 타임피커', FontAwesomeIcons.code)),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/autocamping.png',
            title: "오토캠핑",
            subTitle: "2021.03 ~ 2021.04",
            actions: actionLikeMelon(
                '캠핑카 카쉐어링 서비스', FontAwesomeIcons.campground)),
      ],
    );
  }

  Widget actionLikeMelon(String text, IconData icon) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      decoration: BoxDecoration(
          border: Border.all(color: MyColor.green),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              color: MyColor.green,
              size: 15,
            )
          ],
        ),
      ),
    );
  }

  Widget myAward() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "수상",
          style: TextStyle(
              color: MyColor.grey, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        profileCell(
            imgPath: 'img/army.png',
            title: "통신관계관 집체교육 우수 유공",
            subTitle: "2018.06.29",
            actions: actionLikeMelon('사단장급 표창',  FontAwesomeIcons.award)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/army.png',
            title: "정보 유통 훈련 유공 표창",
            subTitle: "2018.11.12",
            actions: actionLikeMelon('사단장급 표창',  FontAwesomeIcons.award)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/university.png',
            title: "2019 Erica Software-Up 창업 아이디어톤",
            subTitle: "2019.09.28",
            actions: actionLikeMelon('우수상',  FontAwesomeIcons.award)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/university.png',
            title: "2020 제 2회 SW창업 메이커톤",
            subTitle: "2020.09.21",
            actions: actionLikeMelon('최우수상',  FontAwesomeIcons.award)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/university.png',
            title: "2020 Erica Software-Up 제 5회 창업 아이디어톤",
            subTitle: "2019.10.07",
            actions: actionLikeMelon('우수상',  FontAwesomeIcons.award)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/aabb.jpg',
            title: "2020 안산 메이커 창업 페스티벌",
            subTitle: "2020.11.14",
            actions: actionLikeMelon('전시우수상',  FontAwesomeIcons.award)
        ),
        SizedBox(
          height: 20,
        ),
        profileCell(
            imgPath: 'img/university.png',
            title: "2020 HESH 전국 대학생 SW창업 메이커톤",
            subTitle: "2020.12.07",
            actions: actionLikeMelon('장려상',  FontAwesomeIcons.award)
        ),
      ],
    );
  }
}
