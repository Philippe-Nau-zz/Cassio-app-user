import 'package:cassio_user_app/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xfff5f6fa),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Container(height: 200),
            ),
            SizedBox(height: 10),
            Card(
              child: Container(height: 200),
            ),
            SizedBox(height: 10),
            Card(
              child: Container(height: 200),
            ),
          ],
        ),
      ),
    );
  }
}
