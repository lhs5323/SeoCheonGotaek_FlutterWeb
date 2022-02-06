import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:seocheongotaek_web/controller/controllerBind.dart';
import 'package:seocheongotaek_web/page/aboutpage.dart';
import 'package:seocheongotaek_web/page/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seocheongotaek_web/page/noticepage.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeEventDetailOne.dart';
import 'package:seocheongotaek_web/page/widget/notice/noticeEventDetailTwo.dart';
import 'package:seocheongotaek_web/util/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '청암 이하복 고택',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'NotoSerifKR')
      ),
      initialRoute: '/Home',
      getPages: [
        GetPage(
            name: '/Home',
            page: () => HomeScreen(),
            binding: ControllerBind()
        ),
        GetPage(
          name: '/About',
          page: () => AboutScreen(),
          binding: ControllerBind()
        ),
        GetPage(
          name: '/Notice',
          page: () => NoticeScreen(),
          binding: ControllerBind(),
        ),
        GetPage(
          name: '/Contact',

        ),
        GetPage(
          name:'/Notice/detail/1',
          page: () => NoticeDetailScreenOne(),
          binding: ControllerBind(),
        ),
        GetPage(
          name:'/Notice/detail/2',
          page: () => NoticeDetailScreenTwo(),
          binding: ControllerBind(),
        )

      ],
    );
  }
}

