import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/responsive.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PageExp extends StatelessWidget {
  const PageExp({
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
            padding: EdgeInsets.only(left: screenwidth * 0.107, right: screenwidth * 0.107),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '행사',
                        style: TextStyle(
                            fontSize: 14,
                            color: textSub3Color,
                            letterSpacing: 0.3),
                      ),
                      SizedBox(width: screenwidth * 0.029 ),
                      Expanded(child: SvgPicture.asset('assets/images/menuSubline.svg', fit: BoxFit.fitWidth,)),
                      ],
                  ),
                ),
                Spacer(),
                Text(
                  '서천에서 만나는 인생사진 \n 우리 사랑채, 우리사랑을 채우다',
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
                    InkWell(
                        onTap: () => Get.toNamed('/Notice'),
                        child: SvgPicture.asset('assets/images/go-to-link.svg', width: screenwidth * 0.056, height: screenwidth * 0.056 * 0.85,))
                  ],
                ),
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/about-title-content-1@3x.jpg',
                    //width: screenwidth * 0.8263,
                    //height: screenwidth * 0.8263 * 0.631,
                  ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    //width: screenwidth * 0.8263,
                    //height: screenwidth * 0.8263 * 0.8,
                  ),
                ]),
                Spacer(),
              ],
            )),
        Container(
            width: screenwidth,
            height: screenwidth * 1.3,
            padding: EdgeInsets.only(left: screenwidth * 0.107, right: screenwidth * 0.107),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '주변관광지',
                        style: TextStyle(
                            fontSize: 14,
                            color: textSub3Color,
                            letterSpacing: 0.3),
                      ),
                      SizedBox(width: screenwidth * 0.029),
                      Expanded(child: SvgPicture.asset('assets/images/menuSubline.svg')),
                      ],
                  ),
                ),
                Spacer(),
                Text(
                  '우리의 전통 문화와 자연의 소중함\n:서천식물예술원',
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
                    InkWell(
                        onTap: () => Get.toNamed('/About'),
                        child: SvgPicture.asset('assets/images/go-to-link.svg', width: screenwidth * 0.056, height: screenwidth * 0.056 * 0.85,))
                  ],
                ),
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/notice-attraction-content-2@3x.jpg',
                    ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
                    ),
                ]),
                Spacer(),
              ],
            )),
        Container(
            width: screenwidth,
            height: screenwidth * 1.3,
            padding: EdgeInsets.only(left: screenwidth * 0.107, right: screenwidth * 0.107),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '사진 더보기',
                        style: TextStyle(
                            fontSize: 14,
                            color: textSub3Color,
                            letterSpacing: 0.3),
                      ),
                      SizedBox(width: screenwidth * 0.029 ),
                      Expanded(child: SvgPicture.asset('assets/images/menuSubline.svg')),
                    ],
                  ),
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
                    ),
                  SvgPicture.asset(
                    'assets/images/content_link_edge.svg',
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
                    'assets/images/about-title-content-1@3x.jpg',
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
                              '행사',
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
                          '서천에서 만나는 인생사진 \n 우리 사랑채, 우리사랑을 채우다',
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
                            InkWell(
                                onTap: () => Get.toNamed('/Notice'),
                                child: SvgPicture.asset('assets/images/go-to-link.svg'))
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
                              '주변 관광지',
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
                          '우리의 전통 문화와 자연의 소중함\n:서천식물예술원',
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
                            InkWell(
                                onTap: () {
                                  const url = 'http://www.seocheon.go.kr.dj3.ncsfda.org/tour.do';
                                  launchURL(url);
                                },
                                child: SvgPicture.asset('assets/images/go-to-link.svg'))
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
                    'assets/images/event-1@3x.jpg',
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
                              '사진 더보기',
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
                          '청암 이하복, 고택을 이야기하다',
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

//launching URL
launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
