import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:get/get.dart';


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
                        child: SvgPicture.asset('assets/images/title_link@3x.svg',
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
                                  '추천 행사',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: textSub3Color,
                                      letterSpacing: 0.3),
                                ),
                                SizedBox(width: screenwidth * 0.008),
                                Flexible(child: SvgPicture.asset('assets/images/menuSubline.svg'))
                              ],
                            ),
                            Spacer(),
                            Text("우리 사랑채, 우리 사랑을 채우다.", style: TextStyle(
                              fontSize: 24
                            )),
                            Spacer(),
                            Text(
                            '고즈넉한 서천의 문화재 및 자연유산에서 만나는 인생사진. 왔다. 사랑했다. 그리고 갔다. 서천 이하복 고택에서 찍는 로맨틱 사진. 검소한 선비정신을 엿보는 문헌서원에서 찍는 분위기 사진. 흔들리는 갈대 속에서 깊어가는 가을, 신성리 갈대밭에서 감성사진. 서천을 대표하는 장소를 배경으로 아름다운 여러본의 모습을 남겨드립니다. 사진촬영은 전무사진작가와 스타일리스트가 함께합니다.',
                              maxLines: 3,
                                style: TextStyle(
                              fontSize: 18,

                            ),overflow: TextOverflow.ellipsis
                            ),
                            Spacer(),
                            InkWell(
                              onTap:() => Get.toNamed('/Notice/detail/1'),
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
                Image.asset('assets/images/about-title-content-1@3x.jpg',
                    width: screenwidth * 0.29,
                    height: screenwidth * 0.29 * 0.66)
              ],
            )),
        Container(
          width: screenwidth,
          height: screenwidth * 0.12,
          child: Stack(alignment: Alignment.center, children: [
            SvgPicture.asset(
              'assets/images/title_bg_link-edge.svg',
              width: screenwidth,
              color: blendColor,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/images/button-link@3x.jpg',
              width: screenwidth * 0.0486,
              height: screenwidth * 0.0486,
            ),
          ]),
        )
      ]),
    );
  }
}
