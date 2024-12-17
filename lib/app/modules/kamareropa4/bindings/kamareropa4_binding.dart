import 'package:get/get.dart';

import '../controllers/kamareropa4_controller.dart';

class Kamareropa4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamareropa4Controller>(
      () => Kamareropa4Controller(),
    );
  }
}
