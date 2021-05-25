import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/constant.dart';

class PageExp extends StatelessWidget {
  const PageExp({
    Key key,
    @required this.screenwidth,
  }) : super(key: key);

  final screenwidth;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    'images/event-1@3x.jpg',
                    width: screenwidth * 0.285,
                    height: screenwidth * 0.285 * 0.631,
                  ),
                  SvgPicture.asset(
                    'images/content_link_edge.svg',
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
                        SvgPicture.asset('/images/menuSubline.svg')
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
                          '/images/button-link@3x.jpg',
                          width: screenwidth * 0.0486,
                          height: screenwidth * 0.0486,
                          fit: BoxFit.cover,
                        ),
                        SvgPicture.asset('/images/go-to-link.svg')
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
                          '행사',
                          style: TextStyle(
                              fontSize: 18,
                              color: textSub3Color,
                              letterSpacing: 0.3),
                        ),
                        SizedBox(width: screenwidth * 0.008),
                        SvgPicture.asset('/images/menuSubline.svg')
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
                          '/images/button-link@3x.jpg',
                          width: screenwidth * 0.0486,
                          height: screenwidth * 0.0486,
                          fit: BoxFit.cover,
                        ),
                        SvgPicture.asset('/images/go-to-link.svg')
                      ],
                    )
                  ],
                )),
                Spacer(),
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'images/event-1@3x.jpg',
                    width: screenwidth * 0.285,
                    height: screenwidth * 0.285 * 0.631,
                  ),
                  SvgPicture.asset(
                    'images/content_link_edge.svg',
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
                    'images/event-1@3x.jpg',
                    width: screenwidth * 0.285,
                    height: screenwidth * 0.285 * 0.631,
                  ),
                  SvgPicture.asset(
                    'images/content_link_edge.svg',
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
                        SvgPicture.asset('/images/menuSubline.svg')
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
                          '/images/button-link@3x.jpg',
                          width: screenwidth * 0.0486,
                          height: screenwidth * 0.0486,
                          fit: BoxFit.cover,
                        ),
                        SvgPicture.asset('/images/go-to-link.svg')
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
