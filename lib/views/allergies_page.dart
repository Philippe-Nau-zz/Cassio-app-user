import 'package:cassio_user_app/controllers/allergies_controller.dart';
import 'package:cassio_user_app/controllers/dialog_controller.dart';
import 'package:cassio_user_app/widgets/lisview_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllergiesPage extends StatelessWidget {
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
            GetX<AllergiesController>(
              init: AllergiesController(),
              builder: (_) => ListViewPages(
                height: constraints.maxHeight * 0.47,
                heightListview: constraints.maxHeight * 0.47 - 46,
                heightTitle: 40,
                listName: 'Drug Allergies',
                onTap: () => _controllerDialog.showDialog(
                  title: 'Adicionar Remédios Alérgicos',
                  listNamePage: 'Drug Allergies',
                ),
                // ignore: invalid_use_of_protected_member
                itemList: _.allergiesDrugs.value,
                title: 'Alergia a remédios',
              ),
            ),
            SizedBox(height: 10),
            Obx(
              () => ListViewPages(
                height: constraints.maxHeight * 0.47,
                heightListview: constraints.maxHeight * 0.47 - 46,
                heightTitle: 40,
                listName: 'Food allergies',
                onTap: () => _controllerDialog.showDialog(
                    title: 'Adicionar Alimentos Alérgicos',
                    listNamePage: 'Food allergies'),
                // ignore: invalid_use_of_protected_member
                itemList: Get.find<AllergiesController>().allergiesFoods.value,
                title: 'Alergia a alimentos',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
