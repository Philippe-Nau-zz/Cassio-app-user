import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      elevation: 10,
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Get.toNamed('/tabviewpages', arguments: 0);
        },
        child: Container(
          height: 160,
        ),
      ),
    );
  }
}
