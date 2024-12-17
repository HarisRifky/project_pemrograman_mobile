import 'package:get/get.dart';

import '../controllers/kamaramerika2_controller.dart';

class Kamaramerika2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamaramerika2Controller>(
      () => Kamaramerika2Controller(),
    );
  }
}
