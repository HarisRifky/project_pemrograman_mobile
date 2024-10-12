import 'package:get/get.dart';

import '../controllers/dapur3_controller.dart';

class Dapur3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur3Controller>(
      () => Dapur3Controller(),
    );
  }
}
