import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur4bgian2/controllers/dapur4bgian2_controller.dart';


class Dapur4bgian2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur4bgian2Controller>(
      () => Dapur4bgian2Controller(),
    );
  }
}
