import 'package:cassio_user_app/controllers/allergies_controller.dart';
import 'package:cassio_user_app/controllers/drugs_controller.dart';
import 'package:cassio_user_app/controllers/pathologies_controller.dart';
import 'package:cassio_user_app/controllers/surgeries_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogController extends GetxController {
  final _allergiesController = Get.put(AllergiesController());
  final _drugsController = Get.put(DrugsController());
  final _pathologiesController = Get.put(PathologiesController());
  final _surgeriesController = Get.put(SurgeriesController());

  RxList items = [].obs;
  RxDouble heightListview = 0.0.obs;
  RxBool isValid = true.obs;
  RxString listName = ''.obs;

  TextEditingController dialogTextController = TextEditingController();

  addItem() {
    if (dialogTextController.text.trim().isNotEmpty) {
      isValid.value = true;
      if (heightListview < 200) {
        heightListview.value += 40;
      }
      items.add(dialogTextController.text);
      dialogTextController.clear();
    } else {
      isValid.value = false;
    }
  }

  addToListView() {
    if (dialogTextController.text.trim().isNotEmpty || items.isNotEmpty) {
      addItem();
      switch (listName.value) {
        case 'Drug Allergies':
          {
            // ignore: invalid_use_of_protected_member
            _allergiesController.addAllergiesDrugs(items.value);
          }
          break;
        case 'Food allergies':
          {
            // ignore: invalid_use_of_protected_member
            _allergiesController.addAllergiesFoods(items.value);
          }
          break;
        case 'Continuous Drugs':
          {
            // ignore: invalid_use_of_protected_member
            _drugsController.addcontinuousDrugs(items.value);
          }
          break;
        case 'Temporary Drugs':
          {
            // ignore: invalid_use_of_protected_member
            _drugsController.addtemporaryDrugs(items.value);
          }
          break;
        case 'Chronic Pathologies':
          {
            // ignore: invalid_use_of_protected_member
            _pathologiesController.addchronicPathologies(items.value);
          }
          break;
        case 'History Pathologies':
          {
            // ignore: invalid_use_of_protected_member
            _pathologiesController.addhistoryPathologies(items.value);
          }
          break;
        case 'Surgeries':
          {
            // ignore: invalid_use_of_protected_member
            _surgeriesController.addSurgeries(items.value);
          }
          break;
      }
      items.clear();
      heightListview.value = 0.0;
    }
    Get.back();
  }

  deleteItem(index) {
    items.removeAt(index);
    if (items.length < 5) {
      if (heightListview > 0) {
        heightListview.value -= 40;
      }
    }
  }

  showDialog({String title, String listNamePage}) {
    listName.value = listNamePage;
    Get.defaultDialog(
      title: title,
      barrierDismissible: false,
      onConfirm: () => addToListView(),
      textConfirm: 'Adicionar',
      confirmTextColor: Color(0xffffffff),
      textCancel: 'Cancelar',
      onCancel: () {
        heightListview.value = 0.0;
        items.clear();
      },
      radius: 10,
      content: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Color(0xfff5f6fa),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Obx(
                  () => Expanded(
                    child: TextField(
                      controller: dialogTextController,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.characters,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorText: isValid.value
                            ? null
                            : 'Este campo deve ser preenchido',
                      ),
                      onSubmitted: (value) {
                        addItem();
                      },
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    addItem();
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.add,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Obx(
            () => Container(
              height: heightListview.value,
              width: 300,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(5),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        items[index],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () => deleteItem(index),
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blue[200],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
