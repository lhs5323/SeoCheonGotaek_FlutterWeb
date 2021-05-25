import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seocheongotaek_web/controller/noticecontroller.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeEvent.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeQuestionDetail.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:get/get.dart';

class NoticeMenu extends StatefulWidget {
  final screenwidth;
  NoticeMenu({Key key, @required this.screenwidth}) : super(key: key);

  @override
  _NoticeMenuState createState() => _NoticeMenuState();
}

class _NoticeMenuState extends State<NoticeMenu> {
  NoticeMenuController _controller = Get.find();



  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>  Column(
            children: [
              Row(
                  children: List.generate(
                      _controller.noticeMenuItems.length,
                          (index) => NoticeMenuItem(
                          isActive: index == _controller.selectedIndex,
                          text: _controller.noticeMenuItems[index],
                          press: () => [_controller.setMenuIndex(index)])
                  )
              ),
              getSelectedWidget(_controller.noticeMenuItems[_controller.selectedIndex])
            ]
          ),

    );
  }
  Widget getSelectedWidget(String item){
    if (item == "행사 (이벤트)"){
      return NoticeEvent(widget: widget);
    } else if(item == "자주하시는 질문"){
      return NoticeQuestionDetail(widget: widget);
    } else{
      return Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(color: Colors.black),
      );
    }
  }

}

class NoticeMenuItem extends StatelessWidget {
  NoticeMenuItem({
    Key key,
    @ required this.isActive,
    @ required this.text,
    @ required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () async => [press()],
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 28),
          padding: EdgeInsets.only(
              top: 4, bottom: topBottomPadding + 3),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: isActive ? selectedBorderColor : Colors.transparent,
                  ))),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 13,
                color: isActive ? textSelectedColor : textMainColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.54),
          )),
    );
  }
}





