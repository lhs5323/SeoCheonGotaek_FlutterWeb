import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/constant.dart';

class NoticeMain extends StatelessWidget {
  const NoticeMain({
    Key key,
    @required this.screenwidth,
  }) : super(key: key);

  final screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: bodyMainColor),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
            width: screenwidth,
            height: screenwidth * 0.53819,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                        opacity: 0.1,
                        child: SvgPicture.asset('images/title_link@3x.svg',
                            width: screenwidth * 0.3,
                            height: screenwidth * 0.3 * 1.034)),
                    Container(
                        width: screenwidth * 0.3,
                        height: screenwidth * 0.3 * 1.034,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  '행사',
                                  style: TextStyle(
                                      color: textSub3Color,
                                      letterSpacing: 0.3),
                                ),
                                SizedBox(width: screenwidth * 0.008),
                                SvgPicture.asset('/images/menuSubline.svg')
                              ],
                            ),
                            Spacer(),
                            Text("우리 사랑채, 우리 사랑을 채우다."),
                            Spacer(),
                            Text(
                              "연인, 친구 부부 등을 대상으로 이하복 고택과 서천 \n "
                              "의 지역명소를 배정으로 전문가가 사진을 촬영해주 \n "
                              "는 프로그램으로 오는 4월 24일 부터 20일... ",
                            ),
                            Spacer(),
                            InkWell(
                              child: Container(
                                  alignment: Alignment.center,
                                  width: screenwidth * 0.0458,
                                  height: screenwidth * 0.0458 * 0.424,
                                  decoration: BoxDecoration(color: buttonColor),
                                  child: Text("더보기",
                                      style: TextStyle(
                                          color: textSub2Color,
                                          fontSize: 11,
                                          letterSpacing: 0.46))),
                            ),
                            Spacer()
                          ],
                        ))
                  ],
                ),
                Image.asset('images/about-title-content-1@3x.jpg',
                    width: screenwidth * 0.29,
                    height: screenwidth * 0.29 * 0.66)
              ],
            )),
        Container(
          width: screenwidth,
          height: screenwidth * 0.12,
          child: Stack(alignment: Alignment.center, children: [
            SvgPicture.asset(
              'images/title_bg_link-edge.svg',
              width: screenwidth,
              color: blendColor,
              fit: BoxFit.fill,
            ),
            Image.asset(
              '/images/button-link@3x.jpg',
              width: screenwidth * 0.0486,
              height: screenwidth * 0.0486,
            ),
          ]),
        )
      ]),
    );
  }
}
