import 'package:get/get.dart';

import '../controllers/kamareropa2_controller.dart';

class Kamareropa2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamareropa2Controller>(
      () => Kamareropa2Controller(),
    );
  }
}
