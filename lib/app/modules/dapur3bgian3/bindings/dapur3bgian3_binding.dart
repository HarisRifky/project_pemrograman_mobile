import 'package:get/get.dart';

import '../controllers/dapur3bgian3_controller.dart';

class Dapur3bgian3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur3bgian3Controller>(
      () => Dapur3bgian3Controller(),
    );
  }
}
