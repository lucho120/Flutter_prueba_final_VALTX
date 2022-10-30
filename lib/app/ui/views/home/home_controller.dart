import 'package:app_prueba_final_valtx/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Variables
  RxInt indexSelectCategory = RxInt(0);

  //Functions
  void changeCategory(int index) {
    indexSelectCategory.value = index;
  }

  void viewDetailFood() {
    Get.toNamed(AppRoutes.DETAIL_FOOD);
  }
}
