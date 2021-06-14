import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/controller/menucontroller.dart';
import 'package:seocheongotaek_web/page/widget/home/homeInfo.dart';
import 'package:seocheongotaek_web/page/widget/home/homeMain.dart';
import 'package:seocheongotaek_web/page/widget/pageExp.dart';
import 'package:seocheongotaek_web/page/widget/pageWay.dart';
import 'package:seocheongotaek_web/util/constant.dart';
import 'package:seocheongotaek_web/util/pageWrapper.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  final List<String> imagesList = [
    'assets/images/title-bg-1@3x.jpg',
    'assets/images/DJI_0465_compressed.jpg',
    'assets/images/DJI_0504.JPG',
    'assets/images/DJI_0526.JPG'
  ];
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    dynamic screenwidth = MediaQuery.of(context).size.width;
    dynamic screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: Drawer(
          child: Container(
            child: Obx(
                () =>ListView(
                  children: [
                    DrawerHeader(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: topBottomPadding
                          ),
                          child: SvgPicture.asset('assets/images/gotaeklogo.svg',
                              height: 26, width: 160),
                        )
                    ),
                    ...List.generate(_controller.drawerItems.length, (index) => DrawerItem(
                      isActive: index == _controller.selectedIndex,
                      title: _controller.drawerItems[index],
                      press: () {
                        _controller.setMenuIndex(index);
                      },
                    ))
                  ],
                ),)
          )
      ),
        body: SafeArea(
      child: SingleChildScrollView(
          child: PageWrapper(
              child: Column(
        children: <Widget>[
          HomeSlider(screenwidth: screenwidth, imagesList: imagesList, screenheight: screenheight),
          HomeInfo(screenwidth: screenwidth),
          PageExp(screenwidth: screenwidth),
          PageWay(screenwidth: screenwidth),
        ],
      ))),
    ));
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key key, @required this.title, @required this.isActive, @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isActive,
      contentPadding: EdgeInsets.symmetric(horizontal: topBottomPadding),
      onTap: () async => [press(), Get.toNamed('/$title')],
      title: Text(
        title, style:  TextStyle(color: isActive == true ? textSelectedColor : textMainColor),
      )
    );
  }
}








