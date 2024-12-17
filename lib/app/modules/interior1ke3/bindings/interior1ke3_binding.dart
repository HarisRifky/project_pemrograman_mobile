import 'package:get/get.dart';

import '../controllers/interior1ke3_controller.dart';

class Interior1ke3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior1ke3Controller>(
      () => Interior1ke3Controller(),
    );
  }
}
