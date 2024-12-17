import 'package:get/get.dart';

import '../controllers/interior2ke2_controller.dart';

class Interior2ke2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior2ke2Controller>(
      () => Interior2ke2Controller(),
    );
  }
}
