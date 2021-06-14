import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seocheongotaek_web/component/noticemenu.dart';
import 'package:seocheongotaek_web/util/constant.dart';

class NoticeEvent extends StatelessWidget {
  const NoticeEvent({
    Key key,
    @required this.widget,

  }) : super(key: key);

  final NoticeMenu widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: widget.screenwidth * 0.028),
        width: widget.screenwidth,
        height: widget.screenwidth*0.42,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/about-title-content-1@3x.jpg', height: widget.screenwidth*0.67*0.37 * 0.58 ),
                      Spacer(),
                      Text('우리 사랑채, 우리 사랑을 채우다', style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Text('고즈넉한 서천의 문화재 및 자연유산에서 만나는 인생사진. 왔다. 사랑했다. 그리고 갔다. 서천 이하복 고택에서 찍는 로맨틱 사진. 검소한 선비정신을 엿보는 문헌서원에서 찍는 분위기 사진. 흔들리는 갈대 속에서 깊어가는 가을, 신성리 갈대밭에서 감성사진. 서천을 대표하는 장소를 배경으로 아름다운 여러본의 모습을 남겨드립니다. 사진촬영은 전무사진작가와 스타일리스트가 함께합니다.',
                        textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 3,
                        style: TextStyle(fontSize: 15),),
                      Spacer(),
                      Text('2021.04.24', style: TextStyle(fontSize: 12),),
                      Spacer(),
                      InkWell(
                        onTap: () => Get.toNamed('/Notice/detail/1'),
                        child: Container(
                            alignment: Alignment.center,
                            width: widget.screenwidth * 0.0458,
                            height: widget.screenwidth * 0.0458 * 0.424,
                            decoration: BoxDecoration(color: buttonColor),
                            child: Text("더보기",
                                style: TextStyle(
                                    color: textSub2Color,
                                    fontSize: 11,
                                    letterSpacing: 0.46))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/noticeevent2.jpg', height: widget.screenwidth*0.67*0.37 * 0.58 ),
                      Spacer(),
                      Text('문화재 사랑채, 문화재 사랑을 채우다', style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Text("청암 이하복 선생과 서천 이하복 고택에 대한 '고택 해설 투어', 보물창고 퀴즈도 푸는 이하복 고택 'RPG 체험 놀이' 서천의 지역명소를 배경으로 '나만의 DIY무드등 만들기' 고즈넉한 이하복 고택에서 여유있는 '전통차 체험'",
                        textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 3,
                        style: TextStyle(fontSize: 15),),
                      Spacer(),
                      Text('2021.05.15', style: TextStyle(fontSize: 12),),
                      Spacer(),
                      InkWell(
                        onTap: () => Get.toNamed('/Notice/detail/2'),
                        child: Container(
                            alignment: Alignment.center,
                            width: widget.screenwidth * 0.0458,
                            height: widget.screenwidth * 0.0458 * 0.424,
                            decoration: BoxDecoration(color: buttonColor),
                            child: Text("더보기",
                                style: TextStyle(
                                    color: textSub2Color,
                                    fontSize: 11,
                                    letterSpacing: 0.46))),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: Container(
                  height: widget.screenwidth*0.67*1.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/notice-event-content-1@3x.jpg', height: widget.screenwidth*0.67*0.37 * 0.58 ),
                      Spacer(),
                      Text('고택의 숨겨진 보물을 만나다', style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Text("충남 서천군 기산면 신산리에 위치한 서천 이하복 고택은 우리나라 중부지방의 전통농가 형태를 "
                          "그대로 간직한 채 보존되고 있는 대표적인 가옥으로서 그 가치를 인정 받아 "
                          "1984년 12월 24일 국가 민속자료 제 197호로 지정되었습니다.",
                        textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 3,
                        style: TextStyle(fontSize: 15),),
                      Spacer(),
                      Text('2021.04.08', style: TextStyle(fontSize: 12),),
                      Spacer(),
                      InkWell(
                        child: Container(
                            alignment: Alignment.center,
                            width: widget.screenwidth * 0.0458,
                            height: widget.screenwidth * 0.0458 * 0.424,
                            decoration: BoxDecoration(color: buttonColor),
                            child: Text("더보기",
                                style: TextStyle(
                                    color: textSub2Color,
                                    fontSize: 11,
                                    letterSpacing: 0.46))),
                      ),

                    ],
                  ),
                ),
              ),
            ]));
  }
}