import 'package:get/get.dart';

class AllergiesController extends GetxController {
  RxList allergiesDrugs = [].obs;
  RxList allergiesFoods = [].obs;

  addAllergiesDrugs(List items) {
    items.forEach((element) {
      allergiesDrugs.add(element);
    });
  }

  addAllergiesFoods(List items) {
    items.forEach((element) {
      allergiesFoods.add(element);
    });
  }

  deleteAllergiesFoods(int index) {
    allergiesFoods.removeAt(index);
  }

  deleteAllergiesDrugs(int index) {
    allergiesDrugs.removeAt(index);
  }
}
