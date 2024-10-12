import 'package:get/get.dart';

import '../controllers/spanyol1sukses_controller.dart';

class Spanyol1suksesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Spanyol1suksesController>(
      () => Spanyol1suksesController(),
    );
  }
}
