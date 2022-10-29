import 'package:get/get.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
