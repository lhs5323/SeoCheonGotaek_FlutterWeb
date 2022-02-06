import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/component/aboutmenu.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/responsive.dart';
import 'package:timelines/timelines.dart';

import '../pageExp.dart';

class AboutHeritageDetail extends StatelessWidget {

  AboutHeritageDetail({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final AboutMenu widget;
  final List<String> textTimeLine = [
    '청암 이하복 선생 탄생 1911',
    '동강중학교 동강학원 설립 1949',
    '국가 민속자료 197호 지정 1984',
    '청암문화재단 설립 1992',
    '서천 이하복 가옥 중요 민속문화재 지정 1997'
  ];
  @override
  Widget build(BuildContext context) {
    const url = 'https://hometax.go.kr/websquare/websquare.html?w2xPath=/ui/pp/index.xml';
    return (Responsive.isMobile(context)) ?
    Container(
        margin: EdgeInsets.only(top: widget.screenwidth * 0.028,
            right: widget.screenwidth * 0.02,
            left: widget.screenwidth * 0.02),
        width: widget.screenheight * 0.67,
        height: widget.screenheight,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: widget.screenwidth,
                  height: widget.screenheight,
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(
                      top: widget.screenwidth * 0.0625,
                      bottom: widget.screenwidth * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(flex: 1, child: Spacer()),
                      Flexible(flex: 2,
                          child: SvgPicture.asset(
                              'assets/images/line_left.svg')),
                      Flexible(flex: 1, child: Spacer()),
                      Flexible(flex: 3, child: AutoSizeText("청암문화재단은?")),
                      Flexible(flex: 1, child: Spacer()),
                      Flexible(flex: 2,
                          child: SvgPicture.asset(
                              'assets/images/line_right.svg')),
                      Flexible(flex: 1, child: Spacer())
                    ],
                  )),
              Center(child: AutoSizeText("청암문화재단 소개 관련 문구")),
              Container(
                  width: widget.screenwidth,
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(
                      top: widget.screenwidth * 0.0625,
                      bottom: widget.screenwidth * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(flex: 1, child: Spacer()),
                      Flexible(flex: 2,
                          child: SvgPicture.asset(
                              'assets/images/line_left.svg')),
                      Flexible(flex: 1, child: Spacer()),
                      Flexible(flex: 3, child: AutoSizeText("청암문화재단 연혁")),
                      Flexible(flex: 1, child: Spacer()),
                      Flexible(flex: 2,
                          child: SvgPicture.asset(
                              'assets/images/line_right.svg')),
                      Flexible(flex: 1, child: Spacer())
                    ],
                  )),

            ]))
        : Container(
      margin: EdgeInsets.only(top: widget.screenwidth * 0.028),
      width: widget.screenwidth * 0.67,
      height: widget.screenheight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
        flex: 1,
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: SvgPicture.asset('assets/images/line_left.svg',)),
                  SizedBox(width: 4),
                  AutoSizeText("청암문화재단은?"),
                  SizedBox(width: 4),
                  Flexible(
                      child: SvgPicture.asset('assets/images/line_right.svg',)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  AutoSizeText("• 청암문화재단관련 문구, 청암문화재단관련 문구, 청암문화재단관련 문구"),
                  SizedBox(height: 4),
                  AutoSizeText(
                      "• '사회복지사업법'에 의거 설립된 사회복지법인으로 ‘사회복지법인 및 사회복지시설 재무회계규칙’을 준수하고 있습니다."),
                  SizedBox(height: 4),
                  AutoSizeText(
                      "• 상속세 및 증여세법 제48조 5항(공익법인 출연재산 등에 대한 보고서) 및 제50조 3항(공익법인 등의 결산서류 등의 공시 의무) 에 따라 국세청에 공시하고 있으며, 수익사업은 법인세법 제60조에 따라 신고하고 있습니다."),
                  SizedBox(height: 4),
                  AutoSizeText(
                      "• 연1회 회계법인을 통한 외부감사를 실시하고, 보건복지부, 관할구청 등 관련 기관을 통해 재정운영을 검증받으며 투명한 회계관리 및 성실한 사업보고에 최선을 다하고 있습니다."),
                  SizedBox(height: 4),
                  AutoSizeText("• 연간 기부금 모금액 및 활용실적을 공개하고 있습니다."),
                  SizedBox(height: 10),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: widget.screenwidth * 0.028),
                child: InkWell(
                  onTap: () => launchURL(url),
                  child: Container(
                      alignment: Alignment.center,
                      width: widget.screenwidth * 0.1,
                      height: widget.screenwidth * 0.0458 * 0.6,
                      decoration: BoxDecoration(color: buttonColor),
                      child: AutoSizeText(
                          "공익법인 공시 보러가기", textAlign: TextAlign.center,
                          style: TextStyle(
                              color: textSub2Color,
                              fontSize: 11,
                              letterSpacing: 0.46))),
                ),
              ),
            ]),

      ),
      SizedBox(width: 10),
      Expanded(
        flex: 1,
        child: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: SvgPicture.asset('assets/images/line_left.svg')),
            SizedBox(width: 4),
            AutoSizeText("청암문화재단 연혁"),
            SizedBox(width: 4),
            Flexible(child: SvgPicture.asset('assets/images/line_right.svg')),
          ],
        ),
        Expanded(
          child: Timeline.tileBuilder(
            builder: TimelineTileBuilder.fromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(textTimeLine[index]),
                  ),
              itemCount: 5,
            ),
          ),
        )
        ],
      ),
    )])
    );
  }
}

