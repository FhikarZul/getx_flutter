import 'package:get/get.dart';
import 'package:getx_flutter/binding/detail_binding.dart';
import 'package:getx_flutter/binding/home_binding.dart';
import 'package:getx_flutter/route/app_route.dart';
import 'package:getx_flutter/view/detail_page.dart';
import 'package:getx_flutter/view/home_page.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}
