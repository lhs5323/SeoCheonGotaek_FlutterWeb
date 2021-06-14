import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seocheongotaek_web/component/webmenu.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/responsive.dart';
import 'package:get/get.dart';
import 'package:seocheongotaek_web/controller/menucontroller.dart';

class PageWrapper extends StatefulWidget {
  final Widget child;

  PageWrapper({Key key, @required this.child}) : super(key: key);

  _PageWrapperState createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: topBottomPadding,
            ),
            constraints: BoxConstraints(maxWidth: maxWidth),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: notSelectedBorderColor,
            ))),
            child: Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () => Get.toNamed('/'),
                  child: Container(
                    margin: EdgeInsets.only(bottom: topBottomPadding),
                    child: SvgPicture.asset('assets/images/gotaeklogo.svg',
                        height: 26, width: 160),
                  ),
                ),
                Spacer(),
                if (!Responsive.isDesktop(context))
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 26,
                    ),
                    onPressed: () {
                      _controller.openOrCloseDrawer();
                    },
                  ),
                if (Responsive.isDesktop(context)) WebMenu(),
                Spacer(),
              ],
            )),
        widget.child,
        Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: topBottomPadding,
                bottom: topBottomPadding,),
            constraints: BoxConstraints(maxWidth: maxWidth),
            color: bodyBottomColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () => Get.toNamed('/'),
                    child: Container(child: SvgPicture.asset('assets/images/gotaeklogo.svg', color: Colors.white))),
                Flexible(
                  child: Container(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      child: Text(
                        "Copyright ⓒ 2021 청암문화재단 산하 민속문화재. All Rights Reserved.",
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0.67,
                          fontWeight: FontWeight.w300,
                          color: textSub2Color,
                        ),
                      )),
                ),
                ],
            )
        )
      ],
    );
  }
}
