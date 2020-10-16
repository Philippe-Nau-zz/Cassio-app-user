import 'package:cassio_user_app/controllers/dialog_controller.dart';
import 'package:cassio_user_app/controllers/surgeries_controller.dart';
import 'package:cassio_user_app/widgets/lisview_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurgeriesPage extends GetView<SurgeriesController> {
  final _controllerDialog = Get.put(DialogController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.fromLTRB(24, 0, 24, 10),
      child: LayoutBuilder(
        builder: (context, constraints) => GetX<SurgeriesController>(
          init: SurgeriesController(),
          initState: (_) {},
          builder: (_) {
            return ListViewPages(
              height: constraints.maxHeight,
              heightListview: constraints.maxHeight - 56,
              heightTitle: 40,
              onTap: () => _controllerDialog.showDialog(
                  title: 'Adicionar Procedimentos CIrurgicos',
                  listNamePage: 'Surgeries'),
              // ignore: invalid_use_of_protected_member
              itemList: _.surgeries.value,
              title: 'Procedimentos cirurgicos',
            );
          },
        ),
      ),
    );
  }
}
