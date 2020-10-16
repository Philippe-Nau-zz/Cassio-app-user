import 'package:cassio_user_app/controllers/dialog_controller.dart';
import 'package:cassio_user_app/controllers/drugs_controller.dart';
import 'package:cassio_user_app/widgets/lisview_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrugsPage extends GetView<DrugsController> {
  final _controllerDialog = Get.put(DialogController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            GetX<DrugsController>(
              init: DrugsController(),
              initState: (_) {},
              builder: (_) {
                return ListViewPages(
                  height: constraints.maxHeight * 0.47,
                  heightListview: constraints.maxHeight * 0.47 - 46,
                  heightTitle: 40,
                  onTap: () => _controllerDialog.showDialog(
                      title: 'Adicionar Remédios Continuos',
                      listName: 'Continuous Drugs'),
                  // ignore: invalid_use_of_protected_member
                  itemList: _.continuousDrugs.value,
                  title: 'Remédios continuos',
                );
              },
            ),
            SizedBox(height: 10),
            Obx(() => ListViewPages(
                  height: constraints.maxHeight * 0.47,
                  heightListview: constraints.maxHeight * 0.47 - 46,
                  heightTitle: 40,
                  onTap: () => _controllerDialog.showDialog(
                      title: 'Adicionar Remédios temporarios',
                      listName: 'Temporary Drugs'),
                  // ignore: invalid_use_of_protected_member
                  itemList: Get.find<DrugsController>().temporaryDrugs.value,
                  title: 'Remédios temporarios',
                )),
          ],
        ),
      ),
    );
  }
}
