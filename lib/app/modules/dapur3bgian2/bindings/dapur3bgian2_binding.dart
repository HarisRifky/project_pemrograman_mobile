import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur3bgian2/controllers/dapur3bgian2_controller.dart';

class Dapur3bgian2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dapur3bgian2Controller>(
      () => Dapur3bgian2Controller(),
    );
  }
}
