import 'package:get/get.dart';

class DetailController extends GetxController {
  RxInt number = 0.obs;

  @override
  void onInit() {
    super.onInit();
    print("on init");

    final numberFromHome = Get.arguments as int;
    number.value = numberFromHome;
  }

  @override
  void onReady() {
    super.onReady();
    print("on ready");
  }

  @override
  void onClose() {
    print("on close");
  }
}
