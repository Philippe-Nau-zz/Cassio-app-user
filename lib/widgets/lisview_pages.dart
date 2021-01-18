import 'package:cassio_user_app/controllers/allergies_controller.dart';
import 'package:cassio_user_app/controllers/drugs_controller.dart';
import 'package:cassio_user_app/controllers/pathologies_controller.dart';
import 'package:cassio_user_app/controllers/surgeries_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewPages extends StatelessWidget {
  final double height;
  final double heightTitle;
  final double heightListview;
  final List<dynamic> itemList;
  final String title;
  final Function onTap;
  final String listName;

  ListViewPages({
    this.height,
    this.heightTitle,
    this.heightListview,
    this.title,
    this.itemList,
    this.onTap,
    this.listName,
  });

  final _allergiesController = Get.put(AllergiesController());
  final _drugsController = Get.put(DrugsController());
  final _pathologiesController = Get.put(PathologiesController());
  final _surgeriesController = Get.put(SurgeriesController());

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: this.height,
        child: Column(
          children: [
            Container(
              height: this.heightTitle,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    this.title,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  InkWell(
                    onTap: this.onTap,
                    child: Icon(
                      Icons.add,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: this.heightListview,
              child: ListView.builder(
                itemCount: this.itemList.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        this.itemList[index].toString(),
                        style: TextStyle(
                          color: Colors.blue[900],
                        ),
                      ),
                      InkWell(
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blue[200],
                        ),
                        onTap: () {
                          switch (this.listName) {
                            case 'Drug Allergies':
                              {
                                // ignore: invalid_use_of_protected_member
                                _allergiesController
                                    .deleteAllergiesDrugs(index);
                              }
                              break;
                            case 'Food allergies':
                              {
                                // ignore: invalid_use_of_protected_member
                                _allergiesController
                                    .deleteAllergiesFoods(index);
                              }
                              break;
                            case 'Continuous Drugs':
                              {
                                // ignore: invalid_use_of_protected_member
                                _drugsController.deletecontinuousDrugs(index);
                              }
                              break;
                            case 'Temporary Drugs':
                              {
                                // ignore: invalid_use_of_protected_member
                                _drugsController.deletetemporaryDrugs(index);
                              }
                              break;
                            case 'Chronic Pathologies':
                              {
                                // ignore: invalid_use_of_protected_member
                                _pathologiesController
                                    .deletechronicPathologies(index);
                              }
                              break;
                            case 'History Pathologies':
                              {
                                // ignore: invalid_use_of_protected_member
                                _pathologiesController
                                    .deletehistoryPathologies(index);
                              }
                              break;
                            case 'Surgeries':
                              {
                                // ignore: invalid_use_of_protected_member
                                _surgeriesController.deleteSurgeries(index);
                              }
                              break;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
