import 'package:get/get.dart';

import '../controllers/kamarspanyol3_controller.dart';

class Kamarspanyol3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamarspanyol3Controller>(
      () => Kamarspanyol3Controller(),
    );
  }
}
