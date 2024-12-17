import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur2bgian3/controllers/dapur2bgian3_controller.dart';

class Dapur2bgian3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur2bgian3Controller>(
      () => Dapur2bgian3Controller(),
    );
  }
}
