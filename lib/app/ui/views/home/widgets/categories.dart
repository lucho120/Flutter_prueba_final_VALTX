import 'package:app_prueba_final_valtx/app/ui/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_hamburger_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_pizza_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_soup_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_sweet_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_tacos_icons.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 70.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(232, 232, 232, 1),
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: const Icon(
              Icons.tune,
              color: Color.fromRGBO(44, 43, 43, 1),
              size: 30.0,
            ),
          ),
          _listCategory(
              icon:
                  CustomSoup.chinese_food_meal_cuisine_noodle_soup_svgrepo_com,
              category: 'Noodles',
              index: 1),
          _listCategory(
              icon: CustomTacos.taco_svgrepo_com, category: 'Tacos', index: 2),
          _listCategory(
              icon: CustomHamburger.hamburger_svgrepo_com,
              category: 'Burgers',
              index: 3),
          _listCategory(
              icon: CustomPizza.pizza_slice_pizza_svgrepo_com,
              category: 'Pizzas',
              index: 4),
          _listCategory(
              icon: CustomSweet.pie_svgrepo_com, category: 'Sweets', index: 5),
        ],
      ),
    );
  }

  Widget _listCategory(
      {required IconData icon, required String category, required int index}) {
    return GetBuilder<HomeController>(
        builder: (controller) => GestureDetector(
            onTap: () => controller.changeCategory(index),
            child: Obx((() => Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  width: 140.0,
                  decoration: BoxDecoration(
                    color: controller.indexSelectCategory.value == index
                        ? const Color.fromRGBO(26, 25, 25, 1)
                        : const Color.fromRGBO(232, 232, 232,
                            1), //const Color.fromRGBO(232, 232, 232, 1),
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        icon,
                        color: controller.indexSelectCategory.value == index
                            ? const Color.fromRGBO(222, 218, 218, 1)
                            : const Color.fromRGBO(44, 43, 43, 1),
                        size: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          category,
                          style: TextStyle(
                              color:
                                  controller.indexSelectCategory.value == index
                                      ? const Color.fromRGBO(222, 218, 218, 1)
                                      : const Color.fromRGBO(44, 43, 43, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )))));
  }
}
