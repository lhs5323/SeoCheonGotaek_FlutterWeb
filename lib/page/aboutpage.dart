import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seocheongotaek_web/component/aboutmenu.dart';
import 'package:seocheongotaek_web/component/noticemenu.dart';
import 'package:seocheongotaek_web/page/widget/about/aboutinfo.dart';
import 'package:seocheongotaek_web/page/widget/about/aboutmain.dart';
import 'package:seocheongotaek_web/page/widget/about/photogallery.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeMain.dart';
import 'package:seocheongotaek_web/page/widget/pageExp.dart';
import 'package:seocheongotaek_web/page/widget/pageWay.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/pageWrapper.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic screenwidth = MediaQuery.of(context).size.width;
    dynamic screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: PageWrapper(
              child: Column(
        children: <Widget>[
          AboutMain(screenwidth: screenwidth),
          AboutInfo(screenwidth: screenwidth),
          Container(
            width: screenwidth,
            decoration: BoxDecoration(color: bodyMainColor),
            child: Container(
                margin: EdgeInsets.only(top: screenwidth * 0.09),
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: topBottomPadding,
                    left: leftRightPadding,
                    right: leftRightPadding),
                constraints: BoxConstraints(maxWidth: maxWidth),
                child:
                  AboutMenu(
                    screenwidth: screenwidth,
                  ),
                  ),
          ),
          Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(
                  top: screenwidth * 0.0625, bottom: screenwidth * 0.08),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset('assets/images/line_left.svg'),
                  Spacer(),
                  Text("포토갤러리"),
                  Spacer(),
                  SvgPicture.asset('assets/images/line_right.svg'),
                  Spacer()
                ],
              )),
          PhotoGallery(screenwidth: screenwidth)
        ],
      ))),
    ));
  }
}


