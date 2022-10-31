import 'package:app_prueba_final_valtx/app/routes/app_routes.dart';
import 'package:get/get.dart';

class DetailFoodController extends GetxController {
  @override
  void onInit() {
    _initialize();
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

  // variables

  RxInt idCategory = RxInt(0);
  RxString urlImage = RxString('');
  RxString cookingTime = RxString("");
  RxString titleCard = RxString("");
  RxString descriptionCard = RxString("");
  //Functions
  void _initialize() {
    idCategory.value = Get.arguments['idCategory'];
    urlImage.value = Get.arguments['urlImage'];
    cookingTime.value = Get.arguments['cookingTime'];
    titleCard.value = Get.arguments['titleCard'];
    descriptionCard.value = Get.arguments['descriptionCard'];
    //print(urlImage.value);
  }

  void backHome() {
    Get.offNamed(AppRoutes.HOME);
  }
}
