import 'package:get/get.dart';

import '../controllers/dapur4bgian3_controller.dart';

class Dapur4bgian3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur4bgian3Controller>(
      () => Dapur4bgian3Controller(),
    );
  }
}
