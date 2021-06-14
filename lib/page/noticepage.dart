import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seocheongotaek_web/component/noticemenu.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeMain.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticePageExp.dart';
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
                          width: double.infinity,
                          padding: EdgeInsets.only(
                              top: topBottomPadding,
                              bottom: topBottomPadding,
                          left: screenwidth * 0.16  ,
                          right: screenwidth * 0.16),
                          decoration: BoxDecoration(color: blendColor),
                          constraints: BoxConstraints(maxWidth: maxWidth),
                          child: NoticeMenu(screenwidth: screenwidth,)
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        padding: EdgeInsets.only(top: screenwidth * 0.0625, bottom: screenwidth * 0.08),
                          child: Row(
                          children: [
                            Spacer(),
                            SvgPicture.asset('assets/images/line_left.svg'),
                            Spacer(),
                            Text("주변관광지", style: TextStyle(fontSize: 24, color: textSub3Color)),
                            Spacer(),
                            SvgPicture.asset('assets/images/line_right.svg'),
                            Spacer()
                          ],
                        )
                      ),
                      NoticePageExp(screenwidth: screenwidth),
                      PageWay(screenwidth: screenwidth)
                    ],
                  ))),
        ));

  }

}



