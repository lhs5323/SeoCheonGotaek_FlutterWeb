import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/responsive.dart';

class NoticePageExp extends StatelessWidget {
  const NoticePageExp({
    Key key,
    @required this.screenwidth,
  }) : super(key: key);

  final screenwidth;

  @override
  Widget build(BuildContext context) {
    return (Responsive.isMobile(context)) ? Column(
      children: [
        Container(
            width: screenwidth,
            height: screenwidth * 1.3,
            padding: EdgeInsets.only(right: leftRightPadding * 0.112, left: leftRightPadding * 0.112),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      '행사',
                      style: TextStyle(
                          fontSize: 18,
                          color: textSub3Color,
                          letterSpacing: 0.3),
                    ),
                    SizedBox(width: screenwidth * 0.008),
                    SvgPicture.asset('assets/images/menuSubline.svg', width: screenwidth * 0.692, height: 10,),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Text(
                  '이하복 고택에서, 사랑을 채우다',
                  style: TextStyle(
                      fontSize: 21,
                      color: textMainColor,
                      letterSpacing: 0.03),
                ),
                Spacer(),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/button-link@3x.jpg',
                      width: screenwidth * 0.196,
                      height: screenwidth * 0.196,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset('assets/images/go-to-link.svg', width: screenwidth * 0.056, height: screenwidth * 0.056 * 0.85,)
                  ],
                ),
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/notice-event-content-1@3x.jpg',
                    width: screenwidth * 0.8263,
                    height: screenwidth * 0.8263 * 0.631,
                  ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    width: screenwidth * 0.8363,
                    height: screenwidth * 0.8363 * 0.6951,
                  ),
                ]),
                Spacer(),
              ],
            )),
        Container(
            width: screenwidth,
            height: screenwidth * 1.3,
            padding: EdgeInsets.only(right: leftRightPadding * 0.112, left: leftRightPadding * 0.112),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      '소개',
                      style: TextStyle(
                          fontSize: 18,
                          color: textSub3Color,
                          letterSpacing: 0.3),
                    ),
                    SizedBox(width: screenwidth * 0.008),
                    SvgPicture.asset('assets/images/menuSubline.svg', width: screenwidth * 0.692, height: 10,),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Text(
                  '청암 이하복, 고택을 이야기하다',
                  style: TextStyle(
                      fontSize: 21,
                      color: textMainColor,
                      letterSpacing: 0.03),
                ),
                Spacer(),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/button-link@3x.jpg',
                      width: screenwidth * 0.196,
                      height: screenwidth * 0.196,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset('assets/images/go-to-link.svg', width: screenwidth * 0.056, height: screenwidth * 0.056 * 0.85,)
                  ],
                ),
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/event-1@3x.jpg',
                    width: screenwidth * 0.8263,
                    height: screenwidth * 0.8263 * 0.631,
                  ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    width: screenwidth * 0.8363,
                    height: screenwidth * 0.8363 * 0.6951,
                  ),
                ]),
                Spacer(),
              ],
            )),
        Container(
            width: screenwidth,
            height: screenwidth * 1.3,
            padding: EdgeInsets.only(right: leftRightPadding * 0.112, left: leftRightPadding * 0.112),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      '주변관광지',
                      style: TextStyle(
                          fontSize: 18,
                          color: textSub3Color,
                          letterSpacing: 0.3),
                    ),
                    SizedBox(width: screenwidth * 0.008),
                    SvgPicture.asset('assets/images/menuSubline.svg', width: screenwidth * 0.692, height: 10,),
                    Spacer(),
                  ],
                ),
                Spacer(),
                Text(
                  '청암 이하복, 고택을 이야기하다',
                  style: TextStyle(
                      fontSize: 21,
                      color: textMainColor,
                      letterSpacing: 0.03),
                ),
                Spacer(),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/button-link@3x.jpg',
                      width: screenwidth * 0.196,
                      height: screenwidth * 0.196,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset('assets/images/go-to-link.svg', width: screenwidth * 0.056, height: screenwidth * 0.056 * 0.85,)
                  ],
                ),
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/event-1@3x.jpg',
                    width: screenwidth * 0.8263,
                    height: screenwidth * 0.8263 * 0.631,
                  ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    width: screenwidth * 0.8363,
                    height: screenwidth * 0.8363 * 0.6951,
                  ),
                ]),
                Spacer(),
              ],
            )),

      ],
    ) : Column(
      children: [
        Container(
            width: screenwidth,
            height: screenwidth * 0.03,
            color: Colors.white),
        Container(
            width: screenwidth,
            height: screenwidth * 0.193,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/notice-attraction-content-1@3x.jpg',
                    width: screenwidth * 0.285,
                    height: screenwidth * 0.285 * 0.631,
                  ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    width: screenwidth * 0.2903,
                    height: screenwidth * 0.2903 * 0.6651,
                  ),
                ]),
                Spacer(),
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '장항스카이워크',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textSub3Color,
                                  letterSpacing: 0.3),
                            ),
                            SizedBox(width: screenwidth * 0.008),
                            SvgPicture.asset('assets/images/menuSubline.svg')
                          ],
                        ),
                        Spacer(),
                        Text(
                          '기벌포 해전 전망대가 정식 명칭인 이곳은 장항 송림\n 산림욕장 위로 높이 15m의 철제 구조물로\n 만들어진 하늘길이다. 조금은 단출한 서천 …',
                          style: TextStyle(
                              fontSize: 24,
                              color: textMainColor,
                              letterSpacing: 0.03),
                        ),
                        Spacer(),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/button-link@3x.jpg',
                              width: screenwidth * 0.0486,
                              height: screenwidth * 0.0486,
                              fit: BoxFit.cover,
                            ),
                            SvgPicture.asset('assets/images/go-to-link.svg')
                          ],
                        )
                      ],
                    )),
                Spacer(),
              ],
            )),
        Container(
            width: screenwidth,
            height: screenwidth * 0.03,
            color: Colors.white),
        Container(
            width: screenwidth,
            height: screenwidth * 0.193,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '서천예술식물원',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textSub3Color,
                                  letterSpacing: 0.3),
                            ),
                            SizedBox(width: screenwidth * 0.008),
                            SvgPicture.asset('assets/images/menuSubline.svg')
                          ],
                        ),
                        Spacer(),
                        Text(
                          '서천식물예술원은 연꽃정원, 미로정원, 솟대정원, \n옹기전시장, 분재전시장 등으로 구성되어 있다.\n 무료로 개방하고, 청소년들에게 체험…',
                          style: TextStyle(
                              fontSize: 24,
                              color: textMainColor,
                              letterSpacing: 0.03),
                        ),
                        Spacer(),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/button-link@3x.jpg',
                              width: screenwidth * 0.0486,
                              height: screenwidth * 0.0486,
                              fit: BoxFit.cover,
                            ),
                            SvgPicture.asset('assets/images/go-to-link.svg')
                          ],
                        )
                      ],
                    )),
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/notice-attraction-content-2@3x.jpg',
                    width: screenwidth * 0.285,
                    height: screenwidth * 0.285 * 0.631,
                  ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    width: screenwidth * 0.2903,
                    height: screenwidth * 0.2903 * 0.6651,
                  ),
                ]),
                Spacer(),
              ],
            )),
        Container(
            width: screenwidth,
            height: screenwidth * 0.03,
            color: Colors.white),
        Container(
            width: screenwidth,
            height: screenwidth * 0.193,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/notice-attraction-content-1@3x.jpg',
                    width: screenwidth * 0.285,
                    height: screenwidth * 0.285 * 0.631,
                  ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    width: screenwidth * 0.2903,
                    height: screenwidth * 0.2903 * 0.6651,
                  ),
                ]),
                Spacer(),
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '해양생물자원관 시큐리움',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textSub3Color,
                                  letterSpacing: 0.3),
                            ),
                            SizedBox(width: screenwidth * 0.008),
                            SvgPicture.asset('assets/images/menuSubline.svg')
                          ],
                        ),
                        Spacer(),
                        Text(
                          '씨큐리움(SeaQrium)이라는 이름은 \nSEA(바다+Question(질문)+Rium(공간)의\n 합성어로 바다에 대해 호기심을 가지고 질문을 던지며…',
                          style: TextStyle(
                              fontSize: 24,
                              color: textMainColor,
                              letterSpacing: 0.03),
                        ),
                        Spacer(),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/button-link@3x.jpg',
                              width: screenwidth * 0.0486,
                              height: screenwidth * 0.0486,
                              fit: BoxFit.cover,
                            ),
                            SvgPicture.asset('assets/images/go-to-link.svg')
                          ],
                        )
                      ],
                    )),
                Spacer(),
              ],
            )),
        Container(
            width: screenwidth,
            height: screenwidth * 0.03,
            color: Colors.white),
      ],
    );
  }
}
