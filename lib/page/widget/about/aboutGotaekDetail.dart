import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/component/aboutmenu.dart';

class AboutGotaekDetail extends StatelessWidget {
  const AboutGotaekDetail({
    Key key,
    @required this.widget,

  }) : super(key: key);

  final AboutMenu widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: widget.screenwidth * 0.028),
        width: widget.screenwidth * 0.67,
        child: Row(
            children: [
              Container(
                width: widget.screenwidth * 0.34,
                height: widget.screenwidth * 0.34 * 1.08,
                child: Text("본관은 한산(韓山), 호는 청암(靑菴)이다. 고려 말기의 문인·학자 이색(李穡)의 후손으로 충청남도 서천군 기산면"
                    "신산리 120번지에서 태어났다. 1928년 한산공립보통학교, 1934년 제1고등보통학교(지금의 경기중학교)를 졸업한 뒤 일본으로 유학하여 1939년 와세다대학교[早稻田大學校] 경제학과를 졸업하였다. 귀국 후 1939년에서 1943년까지 보성전문학교(지금의 고려대학교)에서 교원으로 근무하다가 1944년 일제의 학병입대 권유를 거부하고 고향으로 돌아와 농촌계몽운동을 전개하였다."
                    "광복 후인 1946년 사재를 털어 동강고등공민학교를 설립한 데 이어 1949년 12월 30일 학교법인 동강학원(東崗學院)과 동강중학교(東崗中學校)를 설립하여 서천 지역의 교육환경을 향상시키는 데 힘썼다. 그의 생가는 조선시대 민가의 형태를 간직하고 있어 1984년 중요민속자료 제197호로 지정되었다. 1994년 지방 교육 발전에 기여한 공로로 국민훈장 동백장이 추서되었다."
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      'images/event-1@3x.jpg',
                      width: widget.screenwidth * 0.285,
                      height: widget.screenwidth * 0.285 * 0.631,
                    ),
                    SvgPicture.asset(
                      'images/content_link_edge.svg',
                      width: widget.screenwidth * 0.2903,
                      height: widget.screenwidth * 0.2903 * 0.6651,
                    ),
                    ]),
                    Text("▲ 와세다  졸업기념 교장 선생님과 함께(맨 왼쪽이 이하복 선생)"),
                    Stack(alignment: Alignment.center, children: [
                      Image.asset(
                        'images/event-1@3x.jpg',
                        width: widget.screenwidth * 0.285,
                        height: widget.screenwidth * 0.285 * 0.631,
                      ),
                      SvgPicture.asset(
                        'images/content_link_edge.svg',
                        width: widget.screenwidth * 0.2903,
                        height: widget.screenwidth * 0.2903 * 0.6651,
                      ),
                      ]),
                      Text("▲ 와세다  졸업기념 교장 선생님과 함께(맨 왼쪽이 이하복 선생)")
                  ],
                  )

                ],
              )
            );

  }
}