import 'package:get/get.dart';

import '../controllers/kamarspanyol2_controller.dart';

class Kamarspanyol2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamarspanyol2Controller>(
      () => Kamarspanyol2Controller(),
    );
  }
}
