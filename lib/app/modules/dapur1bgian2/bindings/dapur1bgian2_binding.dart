import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur1bgian2/controllers/dapur1bgian2_controller.dart';


class Dapur1bgian2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur1bgian2Controller>(
      () => Dapur1bgian2Controller(),
    );
  }
}
