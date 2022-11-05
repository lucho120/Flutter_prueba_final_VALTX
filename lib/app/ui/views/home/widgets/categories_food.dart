import 'package:app_prueba_final_valtx/core/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/data/data_categories_food/buttons_categories_food.dart';
import 'package:app_prueba_final_valtx/app/data/data_categories_food/cards_categories_food.dart';
import 'package:app_prueba_final_valtx/app/data/models/response/response_category_food.dart';
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

  final _cardsScrollController = ScrollController();
  final _buttonsScrollController = ScrollController();

  // anchura de un button food
  late int idCategory = 0;
  // Functions
  void _cardsScrollToIndex(double cardWidth) {
    //función que se desplaza a un card food seleccionado
    _cardsScrollController.animateTo(cardWidth * idCategory,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  void _buttonsScrollToIndex(double buttonWidth) {
    //función que se desplaza a un card food seleccionado
    _buttonsScrollController.animateTo(buttonWidth * idCategory,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    //variables
    List<CardCategoryFood> _cards_categories_food = CARDS_CATEGORIES_FOOD
        .map((cf) => CardCategoryFood.fromMap(cf))
        .toList();

    List<ButtonCategoryFood> _button_categories_food = BUTTONS_CATEGORIES_FOOD
        .map((cf) => ButtonCategoryFood.fromMap(cf))
        .toList();
    final media = MediaQuery.of(context).size;
    final Responsive responsive = Responsive.of(context);
    return GetBuilder<HomeController>(
        builder: (controller) => Container(
              width: responsive.width,
              height: responsive.hp(52.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: responsive.dp(2.0)),
                    height: responsive.hp(8.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _buttonsScrollController,
                        itemCount: _button_categories_food.length,
                        itemBuilder: (_, index) => index == 0
                            ? Container(
                                width: responsive.wp(18.0),
                                decoration: BoxDecoration(
                                  color: backgroundCategoriesFoodUnselect,
                                  borderRadius: BorderRadius.circular(35.0),
                                ),
                                child: Icon(
                                  _button_categories_food[index].iconData,
                                  color: colorIconsCategoriesFood,
                                  size: responsive.hp(4.0),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  idCategory = index;
                                  _cardsScrollToIndex(responsive.wp(97.0));
                                  _buttonsScrollToIndex(responsive.wp(20.0));
                                  setState(() {});
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10.0),
                                  width: responsive.wp(38.0),
                                  decoration: BoxDecoration(
                                    color: idCategory == index
                                        ? backgroundCategoriesFoodSelect
                                        : backgroundCategoriesFoodUnselect, //const Color.fromRGBO(232, 232, 232, 1),
                                    borderRadius: BorderRadius.circular(35.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 13.0, right: 5.0),
                                        child: Icon(
                                          _button_categories_food[index]
                                              .iconData,
                                          color: idCategory == index
                                              ? backgroundCategoriesFoodUnselect
                                              : backgroundCategoriesFoodSelect,
                                          size: responsive.hp(4.0),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, right: 15.0),
                                        child: Text(
                                          _button_categories_food[index]
                                              .category,
                                          style: TextStyle(
                                              color: idCategory == index
                                                  ? const Color.fromRGBO(
                                                      222, 218, 218, 1)
                                                  : const Color.fromRGBO(
                                                      44, 43, 43, 1),
                                              fontSize: responsive.dp(2.0),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ))),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: responsive.dp(1.5)),
                      width: double.infinity,
                      height: responsive.hp(5.0),
                      child: Text(
                        'Fastest delivery time',
                        style: TextStyle(
                            fontSize: responsive.dp(3.0),
                            color: backgroundColor,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: responsive.dp(2.0)),
                    height: responsive.hp(32.0),
                    child: ListView.builder(
                      controller: _cardsScrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: _cards_categories_food.length,
                      itemBuilder: (_, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                        child: Hero(
                                          tag: _cards_categories_food[index]
                                              .idCategory,
                                          child: FadeInImage.assetNetwork(
                                              fit: BoxFit.cover,
                                              width: responsive.wp(95.0),
                                              height: responsive.hp(22.0),
                                              placeholder: loading_image,
                                              image:
                                                  _cards_categories_food[index]
                                                      .urlImage),
                                        )),
                                    Container(
                                      width: responsive.wp(25.0),
                                      margin: const EdgeInsets.only(
                                          top: 10.0, left: 10.0),
                                      padding: const EdgeInsets.only(
                                          top: 12.0, bottom: 12.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.white),
                                      child: Text(
                                        _cards_categories_food[index]
                                            .cookingTime,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: responsive.dp(2.0),
                                            color:
                                                Color.fromRGBO(23, 22, 22, 1)),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Container(
                            width: responsive.wp(60.0),
                            height: responsive.hp(9.0),
                            margin: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _cards_categories_food[index].titleCard,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: responsive.hp(3.0),
                                      color: backgroundColor),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    _cards_categories_food[index]
                                        .descriptionCard,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: responsive.hp(1.8),
                                        color: const Color.fromRGBO(
                                            80, 80, 80, 1)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
