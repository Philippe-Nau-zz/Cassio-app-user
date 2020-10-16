import 'package:get/get.dart';

class PathologiesController extends GetxController {
  RxList chronicPathologies = [].obs;
  RxList historyPathologies = [].obs;

  addchronicPathologies(List items) {
    items.forEach((element) {
      chronicPathologies.add(element);
    });
  }

  addhistoryPathologies(List items) {
    items.forEach((element) {
      historyPathologies.add(element);
    });
  }
}
