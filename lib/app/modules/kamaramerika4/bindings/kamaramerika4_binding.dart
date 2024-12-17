import 'package:get/get.dart';

import '../controllers/kamaramerika4_controller.dart';

class Kamaramerika4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamaramerika4Controller>(
      () => Kamaramerika4Controller(),
    );
  }
}
