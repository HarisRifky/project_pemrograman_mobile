import 'package:get/get.dart';

import '../controllers/dapur5_controller.dart';

class Dapur5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur5Controller>(
      () => Dapur5Controller(),
    );
  }
}
