import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AboutMenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  List<String> get aboutMenuItems =>
      ["인물소개", "전시관 소개", "고택 평면도 형식"];

  void setMenuIndex(int index){
    _selectedIndex.value = index;
  }

}