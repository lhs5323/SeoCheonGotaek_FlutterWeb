import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class NoticeMenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  List<String> get noticeMenuItems =>
      ["행사 (이벤트)", "자주하시는 질문", "공지사항"];

  void setMenuIndex(int index){
    _selectedIndex.value = index;
  }

}