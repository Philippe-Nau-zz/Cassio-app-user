import 'package:cassio_user_app/pages/app_pages.dart';
import 'package:cassio_user_app/routes/routes.dart';
import 'package:cassio_user_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(CassioUser());
}

class CassioUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CASSIO User',
      getPages: AppPages.pages,
      initialRoute: Routes.HOME,
      home: HomePage(),
    );
  }
}
