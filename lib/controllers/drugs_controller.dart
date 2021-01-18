import 'package:get/get.dart';

class DrugsController extends GetxController {
  RxList continuousDrugs = [].obs;

  RxList temporaryDrugs = [].obs;

  addcontinuousDrugs(List items) {
    items.forEach((element) {
      continuousDrugs.add(element);
    });
  }

  addtemporaryDrugs(List items) {
    items.forEach((element) {
      temporaryDrugs.add(element);
    });
  }

  deletecontinuousDrugs(int index) {
    continuousDrugs.removeAt(index);
  }

  deletetemporaryDrugs(int index) {
    temporaryDrugs.removeAt(index);
  }
}
