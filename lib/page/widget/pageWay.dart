import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/responsive.dart';

class PageWay extends StatelessWidget {
  const PageWay({
    Key key,
    @required this.screenwidth,
  }) : super(key: key);

  final screenwidth;
//width: screenwidth * 0.692, height: 10,(MenuSubline)
  @override
  Widget build(BuildContext context) {
    return (Responsive.isMobile(context)) ? Container(
        width: screenwidth,
        height: screenwidth * 1.5786,
        padding: EdgeInsets.only(right: leftRightPadding * 0.112, left: leftRightPadding * 0.112),
        decoration: BoxDecoration(
          image: DecorationImage( image: AssetImage('assets/images/footer-bg@3x.jpg',), fit: BoxFit.fill
        )),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '운영 및 주소',
                    style: TextStyle(
                        fontSize: 18,
                        color: textSub3Color,
                        letterSpacing: 0.3),
                  ),
                  SizedBox(width: screenwidth * 0.008),
                  Flexible(child: SvgPicture.asset('assets/images/menuSubline.svg', width: screenwidth * 0.493, height: 10,)),
                  Spacer(),
                ],
              ),
              Spacer(),
              Text(
                '문의 및 안내    청암문화재단',
                style: TextStyle(
                    fontSize: 18,
                    color: textMainColor,
                    letterSpacing: 0.1),
              ),
              Spacer(),
              Text(
                '이용시간    9:00 ~ 18:00',
                style: TextStyle(
                    fontSize: 18,
                    color: textMainColor,
                    letterSpacing: 0.1),
              ),
              Spacer(),
              Text(
                '주소    충청남도 서천군 기산면 신막로 57번길 32-3',
                style: TextStyle(
                    fontSize: 18,
                    color: textMainColor,
                    letterSpacing: 0.1),
              ),
              Spacer(),
              Image.asset('assets/images/event-1@3x.jpg'),
              Spacer(),
            ],
          ),
        ) : Container(
        width: screenwidth,
        height: screenwidth * 0.4167,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Image.asset('assets/images/footer-bg@3x.jpg', fit: BoxFit.cover),
          Center(
            child: Container(
                width: screenwidth,
                height: screenwidth * 0.193,
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
                                  '운영 및 주소',
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
                              '문의 및 안내    010-0000-0000',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textMainColor,
                                  letterSpacing: 0.1),
                            ),
                            Spacer(),
                            Text(
                              '이용시간    9:00 ~ 18:00',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textMainColor,
                                  letterSpacing: 0.1),
                            ),
                            Spacer(),
                            Text(
                              '주소    충청남도 서천군 기산면 신막로 57번길 32-3',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textMainColor,
                                  letterSpacing: 0.1),
                            ),
                          ],
                        )),
                    Spacer(),
                    Image.asset('assets/images/seocheonmap.PNG'),
                    Spacer(),
                  ],
                )),
          ),
        ]));
  }
}
