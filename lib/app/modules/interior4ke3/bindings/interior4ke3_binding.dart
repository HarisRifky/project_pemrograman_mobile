import 'package:get/get.dart';

import '../controllers/interior4ke3_controller.dart';

class Interior4ke3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Interior4ke3Controller>(
      () => Interior4ke3Controller(),
    );
  }
}
