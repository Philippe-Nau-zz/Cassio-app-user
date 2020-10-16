import 'package:get/get.dart';

class TabViewController extends GetxController {
  RxInt initalIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initalIndex.value = Get.arguments;
  }
}
