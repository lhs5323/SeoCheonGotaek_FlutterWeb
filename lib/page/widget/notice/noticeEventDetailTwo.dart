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

class NoticeDetailScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic screenwidth = MediaQuery.of(context).size.width;
    dynamic screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: PageWrapper(
              child: Column(children: [
        Container(
          padding: EdgeInsets.only(
              left: screenwidth * 0.18,
              right: screenwidth * 0.18,
              top: screenwidth * 0.18 * 0.25),
          child: Column(
            children: <Widget>[
              InkWell(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("목록으로",
                        style: TextStyle(
                            color: textSub1Color,
                            fontSize: 11,
                            letterSpacing: 0.46))),
              ),
              Container(
                  width: screenwidth,
                  height: screenwidth * 0.027,
                  child: Row(
                    children: [
                      Text('문화재 사랑채. 문화재 사랑을 채우다',
                          style: TextStyle(fontSize: 24, color: textMainColor)),
                      Spacer(),
                      Text('2021.05.15~07.17',
                          style: TextStyle(fontSize: 13, color: textSub1Color))
                    ],
                  )),
              Divider(
                height: 1,
                color: textSub2Color,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: topBottomMargin, bottom: topBottomMargin),
                        child: RichText(
                            text: TextSpan(
                                text:
                                    ' • 청암 이하복 선생과 서천 이하복 고택에 대한 \'고택 해설 투어\'\n'
                                    "• 보물찾고 퀴즈도 푸는 이하복 고택 'RPG 체험놀이'\n"
                                    "• 서천의 지역명소를 배경으로 '나만의 DIY무드등 만들기'\n"
                                    "• 고즈넉한 이하복 고택에서 여유있는 '전통차 체험' \n"
                                    "• 이하복 고택 만들기 '고택 만들기 KIT'\n"
                                    "• 아름다운 고택에서 펼쳐지는 '고택 버스킹'\n"
                                    '\n'
                                    '     * 현장 상황에 따라 촬영 장소는 달라질 수 있습니다.\n',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: textMainColor,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'NotoSerifKR'),
                                children: const <TextSpan>[
                              TextSpan(
                                  text: '     * 기    간:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text:
                                      ' 2021. 05. 15 ~ 2021. 07. 17 / 매주 토요일\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                  text: '     * 장    소:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text: ' 서천군 일원(이하복 고택외 서천군 문화, 자연유산)\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                  text: '     * 대    상:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text: ' 누구나 참여 가능\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                  text: '     * 모집 방법:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text:
                                      ' 선착순, 참가신청서 작성 후 이메일 전송(ssong502@naver.com)\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                  text: '     * 참가 비용:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text: ' 무료 (고택만들기 KIT 제작별도 5,000원)\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                  text: '     * 주   관:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text: ' (주)에이치스토리\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                  text: '     * 후   원:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text: ' 서천군, 문화재청, 청암문화재단\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                  text: '     * 문   의:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textMainColor,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'NotoSerifKR')),
                              TextSpan(
                                  text: ' 전화 070-7791-5720\n'
                                      '                     이메일 ssong502@naver.com\n',
                                  style: TextStyle(
                                      fontSize: 15, color: textMainColor)),
                              TextSpan(
                                text: '\n'
                                    '   *현장 상황에 따라 촬영 장소는 달라질 수 있습니다.\n'
                                    '   *본 사업은 코로나 19 바이러스를 예방하기 위한\n'
                                    '    1) 마스크 착용 의무화\n'
                                    '    2) 모든 참여자 체온 측정\n'
                                    '    3) 사회적 거리두기 준수\n',
                                style: TextStyle(
                                    fontSize: 15, color: textMainColor),
                              )
                            ])),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                          child: Image.asset(
                              'assets/images/문화재사랑채_포스터0504_수정-1.jpg')))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed('/Notice/detail/1'),
                    child: Text("이전글으로",
                        style: TextStyle(
                            color: textSub1Color,
                            fontSize: 11,
                            letterSpacing: 0.46)),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed('/Notice'),
                    child: Text("목록으로",
                        style: TextStyle(
                            color: textSub1Color,
                            fontSize: 11,
                            letterSpacing: 0.46)),
                  ),

                  InkWell(
                    onTap: () => Get.toNamed('/Notice/detail/2'),
                    child: Text("다음글",
                        style: TextStyle(
                            color: textSub1Color,
                            fontSize: 11,
                            letterSpacing: 0.46)),
                  ),
                ],
              )
            ],
          ),
        ),
        PageWay(screenwidth: screenwidth)
      ]))),
    ));
  }
}
