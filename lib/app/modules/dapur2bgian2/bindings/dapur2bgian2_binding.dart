import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur2bgian2/controllers/dapur2bgian2_controller.dart';

class Dapur2bgian2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur2bgian2Controller>(
      () => Dapur2bgian2Controller(),
    );
  }
}
