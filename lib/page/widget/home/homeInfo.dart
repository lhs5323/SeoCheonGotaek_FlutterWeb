import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/responsive.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({
    Key key,
    @required this.screenwidth, @required this.screenheight,
  }) : super(key: key);

  final screenwidth;
  final screenheight;

  @override
  Widget build(BuildContext context) {
    return (Responsive.isMobile(context))?
    Container(
        width: screenwidth,
        height: screenheight * 0.3,
        child: Stack(children: <Widget>[
          SvgPicture.asset('assets/images/home_bg_2.svg',
              width: screenwidth, height: screenheight * 0.3, fit: BoxFit.cover),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                "'함부로 나뭇가지를 치지 마라.'\n -청암 이하복 선생",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              SvgPicture.asset('assets/images/line.svg', width: screenwidth),
              Spacer(),
              AutoSizeText(
                "충남 서천군 기산면 신산리에 위치한 서천 이하복 고택은 우리나라 중부지방의 전통농가 형태를"
                "그대로 간직한 채 보존되고 있는 대표적인 가옥으로서 그 가치를 인정 받아"
                "1984년 12월 24일 국가 민속자료 제 197호로 지정되었습니다.",
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ))
        ])) :
    Container(
        width: screenwidth,
        height: screenwidth * 0.3618,
        child: Stack(children: <Widget>[
          SvgPicture.asset('assets/images/home_bg_2.svg',
              width: screenwidth, fit: BoxFit.cover),
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  AutoSizeText(
                    "'함부로 나뭇가지를 치지 마라.'\n -청암 이하복 선생",
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/line.svg'),
                  Spacer(),
                  AutoSizeText(
                    "충남 서천군 기산면 신산리에 위치한 서천 이하복 고택은 우리나라 중부지방의 전통농가 형태를 \n "
                        "그대로 간직한 채 보존되고 있는 대표적인 가옥으로서 그 가치를 인정 받아 \n "
                        "1984년 12월 24일 국가 민속자료 제 197호로 지정되었습니다.",
                    textAlign: TextAlign.center,
                  ),
                  Spacer()
                ],
              ))
        ]));
  }
}
