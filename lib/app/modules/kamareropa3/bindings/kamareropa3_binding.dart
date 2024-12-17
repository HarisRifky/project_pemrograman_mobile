import 'package:get/get.dart';

import '../controllers/kamareropa3_controller.dart';

class Kamareropa3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamareropa3Controller>(
      () => Kamareropa3Controller(),
    );
  }
}
