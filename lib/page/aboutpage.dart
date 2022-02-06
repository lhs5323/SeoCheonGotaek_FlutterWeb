import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:seocheongotaek_web/component/aboutmenu.dart';
import 'package:seocheongotaek_web/component/noticemenu.dart';
import 'package:seocheongotaek_web/controller/menucontroller.dart';
import 'package:seocheongotaek_web/page/widget/about/aboutinfo.dart';
import 'package:seocheongotaek_web/page/widget/about/aboutmain.dart';
import 'package:seocheongotaek_web/page/widget/about/photogallery.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeMain.dart';
import 'package:seocheongotaek_web/page/widget/pageExp.dart';
import 'package:seocheongotaek_web/page/widget/pageWay.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/pageWrapper.dart';

import 'homepage.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic screenwidth = MediaQuery.of(context).size.width;
    dynamic screenheight = MediaQuery.of(context).size.height;
    final MenuController _controller = Get.put(MenuController());
    return Scaffold(
        key: _controller.scaffoldkey,
        drawer: Drawer(
            child: Container(
                child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: topBottomPadding),
                child: SvgPicture.asset('assets/images/gotaeklogo.svg',
                    height: 26, width: 160),
              )),
              ...List.generate(
                  _controller.drawerItems.length,
                  (index) => DrawerItem(
                        isActive: index == _controller.selectedIndex,
                        title: _controller.drawerItems[index],
                        press: () {
                          _controller.setMenuIndex(index);
                        },
                      ))
            ],
          ),
        ))),
        body: SafeArea(
          child: SingleChildScrollView(
              child: PageWrapper(
                  child: Column(
            children: <Widget>[
              AboutMain(screenwidth: screenwidth, screenheight: screenheight),
              AboutInfo(screenwidth: screenwidth, screenheight: screenheight),
              Container(
                margin: EdgeInsets.only(top: screenwidth * 0.09),
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: topBottomPadding,
                    left: screenwidth * 0.001,
                    right: screenwidth * 0.001),
                constraints: BoxConstraints(maxWidth: maxWidth),
                child: AboutMenu(
                  screenwidth: screenwidth,
                  screenheight: screenheight,
                ),
              ),
              Container(
                  width: screenwidth,
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(
                      top: screenwidth * 0.0625, bottom: screenwidth * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Flexible(
                          flex: 4,
                          child:
                              SvgPicture.asset('assets/images/line_left.svg')),
                      Spacer(),
                      Flexible(flex: 3, child: AutoSizeText("포토갤러리")),
                      Spacer(),
                      Flexible(
                          flex: 4,
                          child:
                              SvgPicture.asset('assets/images/line_right.svg')),
                      Spacer()
                    ],
                  )),
              PhotoGallery(screenwidth: screenwidth)
            ],
          ))),
        ));
  }
}
