import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';


class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  RxString _selectedString = ''.obs;
  int get selectedIndex => _selectedIndex.value;
  String get selectedString => _selectedString.value;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> get menuItems =>
      ["Home", "About", "Notice", "Contact"];
  List<String> get drawerItems =>
      ["Home", "About", "Notice", "Contact"];
  List<String> get aboutMenuItems =>
      ["재단소개", "인물소개", "전시관 소개", "고택 평면도 형식"];
  List<String> get noticeMenuItems =>
      ["행사 (이벤트)", "자주하시는 질문", "공지사항"];
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDrawer() async{
    if(_scaffoldKey.currentState.isDrawerOpen){
      _scaffoldKey.currentState.openEndDrawer();
    } else{
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void setMenuIndex(int index){
    _selectedIndex.value = index;
  }
  void setMenuString(String item){
    _selectedString.value = item;
  }
}