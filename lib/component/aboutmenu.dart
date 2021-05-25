import 'package:flutter/material.dart';
import 'package:seocheongotaek_web/controller/aboutcontroller.dart';
import 'package:seocheongotaek_web/page/widget/about/aboutGotaekDetail.dart';
import 'package:seocheongotaek_web/page/widget/about/aboutGotaekStructure.dart';
import 'package:seocheongotaek_web/page/widget/about/aboutPersonDetail.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:get/get.dart';

class AboutMenu extends StatefulWidget {
  final screenwidth;
  AboutMenu({Key key, @required this.screenwidth}) : super(key: key);
  @override
  _AboutMenuState createState() => _AboutMenuState();
}

class _AboutMenuState extends State<AboutMenu> {
  AboutMenuController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>  Column(
          children: [
            Row(
                children: List.generate(
                    _controller.aboutMenuItems.length,
                        (index) => AboutMenuItem(
                        isActive: index == _controller.selectedIndex,
                        text: _controller.aboutMenuItems[index],
                        press: () => [_controller.setMenuIndex(index)])
                )
            ),
            getSelectedWidget(_controller.aboutMenuItems[_controller.selectedIndex])
          ]
      ),

    );
  }

  getSelectedWidget(aboutMenuItem) {
    if (aboutMenuItem == "인물소개"){
      return AboutPersonDetail(widget: widget);
    } else if(aboutMenuItem == "전시관 소개"){
      return AboutGotaekDetail(widget: widget);
    } else{
      return AboutGotaekStructure(widget: widget);
    }
  }
}


class AboutMenuItem extends StatelessWidget {
  const AboutMenuItem({
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
      onTap: () async => [press(), Get.toNamed('/$text')],
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