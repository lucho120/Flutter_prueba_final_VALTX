import 'package:get/get.dart';
import 'package:app_prueba_final_valtx/app/routes/app_routes.dart';

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

  void viewDetailFood(int idCategory, String urlImage, String cookingTime,
      String titleCard, String descriptionCard) async {
    try {
      // creamos nuestro arreglo con la información de la card seleccioanda
      final cardFood = {
        'idCategory': idCategory,
        'urlImage': urlImage,
        'cookingTime': cookingTime,
        'titleCard': titleCard,
        'descriptionCard': descriptionCard
      };

      // nos dirigimos a la vista de detail food
      Get.toNamed(AppRoutes.DETAIL_FOOD, arguments: cardFood);
    } catch (error) {
      print("Error =>$error");
    }
  }
}
