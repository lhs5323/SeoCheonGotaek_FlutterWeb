import 'package:flutter/material.dart';
import 'package:seocheongotaek_web/controller/menucontroller.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:get/get.dart';

class WebMenu extends StatefulWidget {
  @override
  _WebMenuState createState() => _WebMenuState();
}

class _WebMenuState extends State<WebMenu> {
  MenuController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => Row(
                children: List.generate(
                    _controller.menuItems.length,
                        (index) => WebMenuItem(
                        isActive: index == _controller.selectedIndex,
                        text: _controller.menuItems[index],
                        press: () => _controller.setMenuIndex(index))
                )
            ),

    );
  }

}

class WebMenuItem extends StatelessWidget {
  const WebMenuItem({
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