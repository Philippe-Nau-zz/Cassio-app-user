import 'package:cassio_user_app/routes/routes.dart';
import 'package:cassio_user_app/views/home_page.dart';
import 'package:cassio_user_app/views/tabView_pages.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.TABVIEWPAGES, page: () => TabViewPages()),
  ];
}
