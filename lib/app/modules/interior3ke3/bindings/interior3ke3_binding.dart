import 'package:get/get.dart';

import '../controllers/interior3ke3_controller.dart';

class Interior3ke3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior3ke3Controller>(
      () => Interior3ke3Controller(),
    );
  }
}
