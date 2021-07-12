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

class NoticeDetailScreenOne extends StatelessWidget {
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
                onTap: () => Get.toNamed('/Notice'),
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
                      Text('우리사랑채, 우리사랑을 채우다.',
                          style: TextStyle(fontSize: 24, color: textMainColor)),
                      Spacer(),
                      Text('2021.04.08',
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
                          child:
                            RichText(
                              text: TextSpan(text: ' • 고즈넉한 서천의 문화재 및 자연유산에서 만나는 인생사진 \n'
                                  '• 왔다. 사랑했다. 그리고 갔다. 서천 이하복 고택에서 찍는 로맨틱 사진 \n'
                                  '• 검소한 선비정신을 엿보는 문헌서원에서 찍는 분위기 사진 \n'
                                  '• 흔들리는 갈대 속에서 깊어가는 가을, 신성리 갈대밭에서 감성사진 \n'
                                  '• 서천을 대표하는 장소를 배경으로 아름다운 여러본의 모습을 남겨드립니다.\n'
                                  '• 사진촬영은 전문 사진작가와 스타일리스트가 함께합니다.\n'
                                  '\n'
                                  '     * 현장 상황에 따라 촬영 장소는 달라질 수 있습니다.\n', style: TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w400, fontFamily: 'NotoSerifKR'),
                              children: const<TextSpan>[
                                TextSpan(text: '     * 장    소:', style:  TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w700, fontFamily: 'NotoSerifKR')),
                                TextSpan(text: ' 서천군 일원(이하복 고택외 서천군 문화, 자연유산)\n', style:  TextStyle(fontSize: 15, color: textMainColor)),
                                TextSpan(text: '     * 대    상:', style:  TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w700, fontFamily: 'NotoSerifKR')),
                                TextSpan(text: ' 2인 기준(커플, 부부, 친구 등)\n', style:  TextStyle(fontSize: 15, color: textMainColor)),
                                TextSpan(text: '     * 모집 방법:', style:  TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w700, fontFamily: 'NotoSerifKR')),
                                TextSpan(text: ' 선착순, 참가신청서 작성 후 이메일 전송(ssong502@naver.com)\n', style:  TextStyle(fontSize: 15, color: textMainColor)),
                                TextSpan(text: '     * 참가 비용:', style:  TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w700, fontFamily: 'NotoSerifKR')),
                                TextSpan(text: ' 50,000₩ (사진촬영, 한복대여, 메이크업 및 헤어스타일링 포함)\n', style:  TextStyle(fontSize: 15, color: textMainColor)),
                                TextSpan(text: '     * 주   관:', style:  TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w700, fontFamily: 'NotoSerifKR')),
                                TextSpan(text: ' (주)에이치스토리\n', style:  TextStyle(fontSize: 15, color: textMainColor)),
                                TextSpan(text: '     * 후   원:', style:  TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w700, fontFamily: 'NotoSerifKR')),
                                TextSpan(text: ' 서천군, 문화재청, 청암문화재단\n', style:  TextStyle(fontSize: 15, color: textMainColor)),
                                TextSpan(text: '     * 문   의:', style:  TextStyle(fontSize: 15, color: textMainColor, fontWeight: FontWeight.w700, fontFamily: 'NotoSerifKR')),
                                TextSpan(text: ' 전화 070-7791-5720\n'
                                    '                     이메일 ssong502@naver.com\n', style:  TextStyle(fontSize: 15, color: textMainColor)),
                                TextSpan(text:'\n'
                                    '   *현장 상황에 따라 촬영 장소는 달라질 수 있습니다.\n'
                                    '   *본 사업은 코로나 19 바이러스를 예방하기 위한\n'
                                    '    1) 마스크 착용 의무화\n'
                                    '    2) 모든 참여자 체온 측정\n'
                                    '    3) 사회적 거리두기 준수\n',

                                  style:
                                  TextStyle(fontSize: 15, color: textMainColor),)
                              ]

                              )
                            ),


                          )),
                  Expanded(
                      flex: 1,
                      child: Container(
                          child:
                              Image.asset('assets/images/우리사랑채 홍보최종포스터.jpg')))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
