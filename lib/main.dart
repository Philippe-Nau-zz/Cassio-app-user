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
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          headline2: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline3: TextStyle(
            color: Colors.blue[400],
            fontSize: 80,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: 'CASSIO User',
      getPages: AppPages.pages,
      initialRoute: Routes.HOME,
      home: HomePage(),
    );
  }
}
