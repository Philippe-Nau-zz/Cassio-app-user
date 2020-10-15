import 'package:cassio_user_app/controllers/allergies_controller.dart';
import 'package:cassio_user_app/widgets/lisview_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllergiesPage extends GetView<AllergiesController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            ListViewPages(
              height: constraints.maxHeight * 0.47,
              heightListview: constraints.maxHeight * 0.47 - 46,
              heightTitle: 40,
              onTap: () {},
              itemList: [1, 2, 3, 4, 5, 6, 7],
              title: 'Alergia a remédios',
            ),
            SizedBox(height: 10),
            ListViewPages(
              height: constraints.maxHeight * 0.47,
              heightListview: constraints.maxHeight * 0.47 - 46,
              heightTitle: 40,
              onTap: () {},
              itemList: [1, 2, 3, 4, 5, 6, 7],
              title: 'Alergia a alimentos',
            ),
          ],
        ),
      ),
    );
  }
}
