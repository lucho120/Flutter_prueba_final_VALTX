import 'package:app_prueba_final_valtx/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
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
  RxString urlImageSelect = RxString('');
  RxString cookingTime = RxString("");
  RxString titleCard = RxString("");
  RxString descriptionCard = RxString("");
  RxDouble opacity = RxDouble(0.1);
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

  void backDetailFood(BuildContext context, String urlImage) {
    urlImageSelect.value = urlImage;
    opacity.value = 1.0;
    Navigator.pop(context);
  }
}
