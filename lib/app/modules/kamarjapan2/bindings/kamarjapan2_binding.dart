import 'package:get/get.dart';

import '../controllers/kamarjapan2_controller.dart';

class Kamarjapan2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Kamarjapan2Controller>(
      () => Kamarjapan2Controller(),
    );
  }
}
