import 'package:cassio_user_app/controllers/homePage_controller.dart';
import 'package:cassio_user_app/widgets/header.dart';
import 'package:cassio_user_app/widgets/main_gridView.dart';
import 'package:cassio_user_app/widgets/userInfo_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Stack(
        children: [
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: LayoutBuilder(
              builder: (context, constraints) => Column(
                children: [
                  Header(),
                  SizedBox(height: 10),
                  UserInfoCard(),
                  SizedBox(height: 40),
                  Container(
                      alignment: Alignment.center,
                      height: constraints.maxHeight - 290,
                      child: MainGridView()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
