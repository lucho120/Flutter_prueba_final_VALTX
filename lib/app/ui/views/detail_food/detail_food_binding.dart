import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';
import 'package:get/get.dart';

class DetailFoodBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DetailFoodController());
  }
}
