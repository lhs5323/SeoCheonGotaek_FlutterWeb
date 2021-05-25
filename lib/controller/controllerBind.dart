import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:seocheongotaek_web/controller/aboutcontroller.dart';
import 'package:seocheongotaek_web/controller/menucontroller.dart';

import 'noticecontroller.dart';

class ControllerBind extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(() => MenuController());
    Get.lazyPut<NoticeMenuController> (() => NoticeMenuController());
    Get.lazyPut<AboutMenuController>(() => AboutMenuController());
  }

}