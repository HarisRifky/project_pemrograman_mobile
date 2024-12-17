import 'package:get/get.dart';

import '../controllers/kamaramerika3_controller.dart';

class Kamaramerika3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamaramerika3Controller>(
      () => Kamaramerika3Controller(),
    );
  }
}
