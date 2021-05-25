import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class NoticeDetailMenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  List<String> get noticeDetailMenuItems =>
      ["이전글", "목록으로", "다음글"];

  void setMenuIndex(int index){
    _selectedIndex.value = index;
  }

}