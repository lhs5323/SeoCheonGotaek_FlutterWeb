import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seocheongotaek_web/page/widget/home/homeInfo.dart';
import 'package:seocheongotaek_web/page/widget/home/homeMain.dart';
import 'package:seocheongotaek_web/page/widget/pageExp.dart';
import 'package:seocheongotaek_web/page/widget/pageWay.dart';
import 'package:seocheongotaek_web/util/pageWrapper.dart';

class HomeScreen extends StatelessWidget {
  final List<String> imagesList = [
    'images/title-bg-1@3x.jpg',
    'images/DJI_0420.JPG',
    'images/DJI_0435.JPG',
    'images/DJI_0507.JPG'
  ];
  @override
  Widget build(BuildContext context) {
    dynamic screenwidth = MediaQuery.of(context).size.width;
    dynamic screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: PageWrapper(
              child: Column(
        children: <Widget>[
          HomeSlider(screenwidth: screenwidth, imagesList: imagesList),
          HomeInfo(screenwidth: screenwidth),
          PageExp(screenwidth: screenwidth),
          PageWay(screenwidth: screenwidth),
        ],
      ))),
    ));
  }
}








