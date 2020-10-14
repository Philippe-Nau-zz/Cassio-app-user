import 'package:get/get.dart';

class TabViewController extends GetxController {
  RxInt _initalIndex = 0.obs;
  int get initialIndex => _initalIndex.value;

  @override
  void onInit() {
    super.onInit();
    _initalIndex.value = Get.arguments;
  }
}
