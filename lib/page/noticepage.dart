import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seocheongotaek_web/component/noticemenu.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeMain.dart';
import 'package:seocheongotaek_web/page/widget/pageExp.dart';
import 'package:seocheongotaek_web/page/widget/pageWay.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/pageWrapper.dart';
import 'package:get/get.dart';

class NoticeScreen extends StatelessWidget {

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
                      NoticeMain(screenwidth: screenwidth),
                      Container(
                        width: screenwidth,
                        height: screenwidth * 0.5826,
                        decoration: BoxDecoration(
                          color: blendColor
                        ),
                        child: Container(
                            margin: EdgeInsets.only(top: screenwidth * 0.09),
                            width: double.infinity,
                            padding: EdgeInsets.only(
                                top: topBottomPadding,
                                left: leftRightPadding,
                                right: leftRightPadding),
                            constraints: BoxConstraints(maxWidth: maxWidth),

                            child: Column(
                              children: [
                                Row(children: [Spacer(),NoticeMenu(screenwidth: screenwidth,),Spacer()]),
                                ],
                            )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        padding: EdgeInsets.only(top: screenwidth * 0.0625, bottom: screenwidth * 0.08),
                          child: Row(
                          children: [
                            Spacer(),
                            SvgPicture.asset('images/line_left.svg'),
                            Spacer(),
                            Text("주변관광지"),
                            Spacer(),
                            SvgPicture.asset('images/line_right.svg'),
                            Spacer()
                          ],
                        )
                      ),
                      PageExp(screenwidth: screenwidth),
                      PageWay(screenwidth: screenwidth)
                    ],
                  ))),
        ));

  }

}



