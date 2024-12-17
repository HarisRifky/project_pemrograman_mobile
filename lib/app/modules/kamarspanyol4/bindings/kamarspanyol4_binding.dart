import 'package:get/get.dart';

import '../controllers/kamarspanyol4_controller.dart';

class Kamarspanyol4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KamarSpanyol4Controller>(
      () => KamarSpanyol4Controller(),
    );
  }
}
