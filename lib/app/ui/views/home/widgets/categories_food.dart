import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/data/data_categories_food/buttons_categories_food.dart';
import 'package:app_prueba_final_valtx/app/data/data_categories_food/cards_categories_food.dart';
import 'package:app_prueba_final_valtx/app/data/models/response/response_categories_food.dart';
import 'package:app_prueba_final_valtx/app/ui/components/custom_assets.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/home_controller.dart';
import 'package:app_prueba_final_valtx/core/theme/app_color.dart';

class CategoriesFood extends StatefulWidget {
  const CategoriesFood({super.key});

  @override
  State<CategoriesFood> createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFood> {
  // variables

  final _scrollController = ScrollController();
  final double _width = 380; // anchura de un card food

  // Functions
  void _scrollToIndex(index) {
    //función que se desplaza a un card food seleccionado
    _scrollController.animateTo(_width * index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    //variables
    List<CardCategoryFood> _cards_categories_food = [];
    _cards_categories_food = CARDS_CATEGORIES_FOOD
        .map((cf) => CardCategoryFood.fromMap(cf))
        .toList();
    List<ButtonCategoryFood> _button_categories_food = [];
    _button_categories_food = BUTTONS_CATEGORIES_FOOD
        .map((cf) => ButtonCategoryFood.fromMap(cf))
        .toList();

    return GetBuilder<HomeController>(
        builder: (controller) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 2.0),
                  height: 70.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _button_categories_food.length,
                      itemBuilder: (context, index) => index == 0
                          ? Container(
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
                            )
                          : GestureDetector(
                              onTap: () {
                                controller.changeCategory(index);
                                _scrollToIndex(index);
                              },
                              child: Obx((() => Container(
                                    margin: const EdgeInsets.only(left: 10.0),
                                    width: 140.0,
                                    decoration: BoxDecoration(
                                      color: controller
                                                  .indexSelectCategory.value ==
                                              index
                                          ? const Color.fromRGBO(26, 25, 25, 1)
                                          : const Color.fromRGBO(232, 232, 232,
                                              1), //const Color.fromRGBO(232, 232, 232, 1),
                                      borderRadius: BorderRadius.circular(35.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0,
                                              left: 13.0,
                                              right: 5.0),
                                          child: Icon(
                                            _button_categories_food[index]
                                                .iconData,
                                            color: controller
                                                        .indexSelectCategory
                                                        .value ==
                                                    index
                                                ? const Color.fromRGBO(
                                                    222, 218, 218, 1)
                                                : const Color.fromRGBO(
                                                    44, 43, 43, 1),
                                            size: 40.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, right: 15.0),
                                          child: Text(
                                            _button_categories_food[index]
                                                .category,
                                            style: TextStyle(
                                                color: controller
                                                            .indexSelectCategory
                                                            .value ==
                                                        index
                                                    ? const Color.fromRGBO(
                                                        222, 218, 218, 1)
                                                    : const Color.fromRGBO(
                                                        44, 43, 43, 1),
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))))),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: const Text(
                    'Fastest delivery time',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: backgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                    width: 380.0,
                    height: 245.0,
                    child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: _cards_categories_food.length,
                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: (() {
                              controller.viewDetailFood(
                                  _cards_categories_food[index].idCategory,
                                  _cards_categories_food[index].urlImage,
                                  _cards_categories_food[index].cookingTime,
                                  _cards_categories_food[index].titleCard,
                                  _cards_categories_food[index]
                                      .descriptionCard);
                            }),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        child: FadeInImage.assetNetwork(
                                            fit: BoxFit.cover,
                                            width: 370.0,
                                            height: 185.0,
                                            placeholder: loading_image,
                                            image: _cards_categories_food[index]
                                                .urlImage)),
                                    Container(
                                      width: 110.0,
                                      height: 40.0,
                                      margin: const EdgeInsets.all(15.0),
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.white),
                                      child: Text(
                                        _cards_categories_food[index]
                                            .cookingTime,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17.0,
                                            color:
                                                Color.fromRGBO(23, 22, 22, 1)),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 25.0, top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _cards_categories_food[index].titleCard,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                      color: backgroundColor),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    _cards_categories_food[index]
                                        .descriptionCard,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.0,
                                        color: Color.fromRGBO(80, 80, 80, 1)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ));
  }
}
