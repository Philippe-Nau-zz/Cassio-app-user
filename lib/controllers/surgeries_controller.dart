import 'package:get/get.dart';

class SurgeriesController extends GetxController {
  RxList surgeries = [].obs;

  addSurgeries(List items) {
    items.forEach((element) {
      surgeries.add(element);
    });
  }

  deleteSurgeries(int index) {
    surgeries.removeAt(index);
  }
}
