import 'package:cassio_user_app/controllers/dialog_controller.dart';
import 'package:cassio_user_app/controllers/pathologies_controller.dart';
import 'package:cassio_user_app/widgets/lisview_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathologiesPage extends GetView<PathologiesController> {
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
            GetX<PathologiesController>(
              init: PathologiesController(),
              initState: (_) {},
              builder: (_) {
                return ListViewPages(
                  height: constraints.maxHeight * 0.47,
                  heightListview: constraints.maxHeight * 0.47 - 46,
                  heightTitle: 40,
                  listName: 'Chronic Pathologies',
                  onTap: () => _controllerDialog.showDialog(
                    title: 'Adicionar Doenças Crônicas',
                    listNamePage: 'Chronic Pathologies',
                  ),
                  // ignore: invalid_use_of_protected_member
                  itemList: _.chronicPathologies.value,
                  title: 'Doenças crônicas',
                );
              },
            ),
            SizedBox(height: 10),
            Obx(
              () => ListViewPages(
                height: constraints.maxHeight * 0.47,
                heightListview: constraints.maxHeight * 0.47 - 46,
                heightTitle: 40,
                listName: 'History Pathologies',
                onTap: () => _controllerDialog.showDialog(
                  title: 'Adicionar Histórico de Doenças',
                  listNamePage: 'History Pathologies',
                ),
                itemList: Get.find<PathologiesController>()
                    .historyPathologies
                    // ignore: invalid_use_of_protected_member
                    .value,
                title: 'Histórico de doenças',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
