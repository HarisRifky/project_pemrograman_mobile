import 'package:get/get.dart';

import '../controllers/dapur4_controller.dart';

class Dapur4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur4Controller>(
      () => Dapur4Controller(),
    );
  }
}
