import 'package:get/get.dart';

import '../controllers/dapur_controller.dart';

class DapurBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DapurController>(
      () => DapurController(),
    );
  }
}
