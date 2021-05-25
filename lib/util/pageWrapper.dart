import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seocheongotaek_web/component/webmenu.dart';
import 'package:seocheongotaek_web/util/constant.dart';

class PageWrapper extends StatefulWidget {
  final Widget child;

  PageWrapper({Key key, @required this.child}) : super(key: key);

  _PageWrapperState createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper>{


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: topBottomPadding,
                left: leftRightPadding,
                right: leftRightPadding),
            constraints: BoxConstraints(maxWidth: maxWidth),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: notSelectedBorderColor,
                    ))),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: topBottomPadding),
                  child: SvgPicture.asset('images/gotaeklogo.svg',
                      height: 26, width: 160),
                ),
                Spacer(),
                WebMenu(),
                Spacer(),
              ],
            )),
        widget.child,
        Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: topBottomPadding,
                bottom: topBottomPadding,
                left: leftRightPadding,
                right: leftRightPadding),
            constraints: BoxConstraints(maxHeight: 64),
            color: bodyBottomColor,
            child: Row(
                children: [
                SvgPicture.asset('images/gotaeklogow.svg',
                height: 26, width: 160),
            Spacer(),
            Container(
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
              Spacer(),
              ],
            ))
      ],

    );
  }
}


