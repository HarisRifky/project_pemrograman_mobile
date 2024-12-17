import 'package:get/get.dart';

import '../controllers/interior3ke2_controller.dart';

class Interior3ke2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior3ke2Controller>(
      () => Interior3ke2Controller(),
    );
  }
}
