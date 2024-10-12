import 'package:get/get.dart';

import '../controllers/dapur2_controller.dart';

class Dapur2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur2Controller>(
      () => Dapur2Controller(),
    );
  }
}
