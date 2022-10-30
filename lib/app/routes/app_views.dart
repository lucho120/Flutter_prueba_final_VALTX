import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_view.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/routes/app_routes.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/home_binding.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/home_view.dart';

abstract class AppViews {
  static final views = [
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(name: AppRoutes.DETAIL_FOOD, page: () => const DetailFoodView()),
  ];
}
