import 'package:get/get.dart';

import '../controllers/interior2ke3_controller.dart';

class Interior2ke3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior2ke3Controller>(
      () => Interior2ke3Controller(),
    );
  }
}
