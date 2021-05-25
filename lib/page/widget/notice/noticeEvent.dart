import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        width: widget.screenwidth*0.67,
        height: widget.screenwidth*0.67*0.4,
        child: Row(
            children:[
              Container(
                width: (widget.screenwidth*0.67-48)/3,
                height: widget.screenwidth*0.67*0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/notice-event-content-1@3x.jpg', width: (widget.screenwidth*0.67-48)/3, height: widget.screenwidth*0.67*0.37 * 0.58 ),
                    Spacer(),
                    Text('고택의 숨겨진 보물을 만나다', style: TextStyle(fontSize: 18)),
                    Spacer(),
                    Flexible(
                      child: Text("충남 서천군 기산면 신산리에 위치한 서천 이하복 고택은 우리나라 중부지방의 전통농가 형태를 "
                          "그대로 간직한 채 보존되고 있는 대표적인 가옥으로서 그 가치를 인정 받아 "
                          "1984년 12월 24일 국가 민속자료 제 197호로 지정되었습니다.",
                        textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15),),
                    ),
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
              Spacer(),
              Container(
                width: (widget.screenwidth*0.67-48)/3,
                height: widget.screenwidth*0.67*1.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/notice-event-content-1@3x.jpg', width: (widget.screenwidth*0.67-48)/3, height: widget.screenwidth*0.67*0.37 * 0.58 ),
                    Spacer(),
                    Text('고택의 숨겨진 보물을 만나다', style: TextStyle(fontSize: 18)),
                    Spacer(),
                    Flexible(
                      child: Text("충남 서천군 기산면 신산리에 위치한 서천 이하복 고택은 우리나라 중부지방의 전통농가 형태를 "
                          "그대로 간직한 채 보존되고 있는 대표적인 가옥으로서 그 가치를 인정 받아 "
                          "1984년 12월 24일 국가 민속자료 제 197호로 지정되었습니다.",
                        textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15),),
                    ),
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
              Spacer(),
              Container(
                width: (widget.screenwidth*0.67-48)/3,
                height: widget.screenwidth*0.67*1.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/notice-event-content-1@3x.jpg', width: (widget.screenwidth*0.67-48)/3, height: widget.screenwidth*0.67*0.37 * 0.58 ),
                    Spacer(),
                    Text('고택의 숨겨진 보물을 만나다', style: TextStyle(fontSize: 18)),
                    Spacer(),
                    Flexible(
                      child: Text("충남 서천군 기산면 신산리에 위치한 서천 이하복 고택은 우리나라 중부지방의 전통농가 형태를 "
                          "그대로 간직한 채 보존되고 있는 대표적인 가옥으로서 그 가치를 인정 받아 "
                          "1984년 12월 24일 국가 민속자료 제 197호로 지정되었습니다.",
                        textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15),),
                    ),
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
            ]));
  }
}