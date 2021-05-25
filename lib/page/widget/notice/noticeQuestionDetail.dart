import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seocheongotaek_web/component/noticemenu.dart';
import 'package:seocheongotaek_web/util/constant.dart';

class NoticeQuestionDetail extends StatelessWidget {
  const NoticeQuestionDetail({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final NoticeMenu widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: widget.screenwidth * 0.028),
        width: widget.screenwidth*0.67,
        height: widget.screenwidth * 0.089 * 3.2,
        child: Column(
          children: [
            Container(
                height: widget.screenwidth * 0.089,
                child: Column(
                  children: [
                    Spacer(),
                    Text('Q. 예약 인원 보다 많이 가면 어떻게 해야하나요?'),
                    Spacer(),
                    Text('행사 7일전까지 이하복고택 전화(063-241-8195)주셔서 초과 인원 말씀하시고 추가요금 입금 해주시면 …', overflow: TextOverflow.ellipsis,),
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
                )
            ),
            Spacer(),
            Container(
                height: widget.screenwidth * 0.089,
                child: Column(
                  children: [
                    Spacer(),
                    Text('Q. 예약 인원 보다 많이 가면 어떻게 해야하나요?'),
                    Spacer(),
                    Text('행사 7일전까지 이하복고택 전화(063-241-8195)주셔서 초과 인원 말씀하시고 추가요금 입금 해주시면 …', overflow: TextOverflow.ellipsis,),
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
                )
            ),
            Spacer(),
            Container(
                height: widget.screenwidth * 0.089,
                child: Column(
                  children: [
                    Spacer(),
                    Text('Q. 예약 인원 보다 많이 가면 어떻게 해야하나요?'),
                    Spacer(),
                    Text('행사 7일전까지 이하복고택 전화(063-241-8195)주셔서 초과 인원 말씀하시고 추가요금 입금 해주시면 …', overflow: TextOverflow.ellipsis,),
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
                )
            ),
          ],
        )
    );
  }
}