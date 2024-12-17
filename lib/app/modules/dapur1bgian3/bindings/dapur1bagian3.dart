import 'package:get/get.dart';
import 'package:myapp/app/modules/dapur1bgian3/controllers/dapur1bagian3_Controller.dart';


class dapur1bgian3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<dapur1bagian3Controller>(
      () => dapur1bagian3Controller(),
    );
  }
}
