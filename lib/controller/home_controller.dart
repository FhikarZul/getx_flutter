import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  RxInt number = 0.obs;

  @override
  void onInit() {
    super.onInit();
    print("is init");

    number.value = 1;
  }

  @override
  void onClose() {
    print("is close");
  }

  increment() {
    number.value += 1;
  }

  decrement() {
    number.value -= 1;
  }
}
