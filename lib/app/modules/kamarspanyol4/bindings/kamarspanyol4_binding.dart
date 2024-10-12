import 'package:get/get.dart';

import '../controllers/kamarspanyol4_controller.dart';

class Kamarspanyol4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamarspanyol4Controller>(
      () => Kamarspanyol4Controller(),
    );
  }
}
