import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/constant.dart';

class AboutMain extends StatelessWidget {
  const AboutMain({
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
                            Text("사재털어 교육사업, 초가종택의 청빈한 삶이 깃든 곳"),
                            Spacer(),
                            Text(
                              '이하복 고택'
                              ),
                            Spacer(),
                            Spacer()
                          ],
                        ))
                  ],
                ),
                Image.asset('images/lee@3x.jpg',
                    width: screenwidth * 0.16,
                    height: screenwidth * 0.29 * 1.38),
                Text('청암 이하복청암\n 이하복 靑菴 李夏馥, 1911~1987')
              ],
            )),
        Container(
          width: screenwidth,
          height: screenwidth * 0.12,
          child: Align(alignment: Alignment.center,
            child: Image.asset(
              '/images/button-link@3x.jpg',
              width: screenwidth * 0.0486,
              height: screenwidth * 0.0486,
            ),
          ),
        )
      ]),
    );
  }
}