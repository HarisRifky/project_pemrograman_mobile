import 'package:get/get.dart';

import '../controllers/interior1ke2_controller.dart';

class Interior1ke2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior1ke2Controller>(
      () => Interior1ke2Controller(),
    );
  }
}
