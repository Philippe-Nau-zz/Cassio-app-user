import 'package:cassio_user_app/controllers/surgeries_controller.dart';
import 'package:cassio_user_app/widgets/lisview_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurgeriesPage extends GetView<SurgeriesController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) => ListViewPages(
          height: constraints.maxHeight,
          heightListview: constraints.maxHeight - 56,
          heightTitle: 40,
          onTap: () {},
          itemList: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
          title: 'Procedimentos cirurgicos',
        ),
      ),
    );
  }
}
