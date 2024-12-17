import 'package:get/get.dart';

import '../controllers/interior4ke2_controller.dart';

class Interior4ke2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior4ke2Controller>(
      () => Interior4ke2Controller(),
    );
  }
}
