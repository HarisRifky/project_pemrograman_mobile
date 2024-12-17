import 'package:get/get.dart';
import 'package:myapp/app/modules/Dapursukses/controllers/dapursukses_controller.dart';

class dapursuksesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<dapurkesuksesController>(
      () => dapurkesuksesController(),
    );
  }
}
