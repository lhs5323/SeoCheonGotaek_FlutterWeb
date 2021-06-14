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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //fonts
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'NotoSerifKR')
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
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

