import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/ui/views/home/home_controller.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_hamburger_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_pizza_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_soup_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_sweet_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_tacos_icons.dart';
import 'package:app_prueba_final_valtx/core/theme/app_color.dart';

class CardsFood extends StatefulWidget {
  const CardsFood({super.key});

  @override
  State<CardsFood> createState() => _CardsFoodState();
}

class _CardsFoodState extends State<CardsFood> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
                  icon: CustomSoup
                      .chinese_food_meal_cuisine_noodle_soup_svgrepo_com,
                  category: 'Noodles',
                  index: 1),
              _listCategory(
                  icon: CustomTacos.taco_svgrepo_com,
                  category: 'Tacos',
                  index: 2),
              _listCategory(
                  icon: CustomHamburger.hamburger_svgrepo_com,
                  category: 'Burgers',
                  index: 3),
              _listCategory(
                  icon: CustomPizza.pizza_slice_pizza_svgrepo_com,
                  category: 'Pizzas',
                  index: 4),
              _listCategory(
                  icon: CustomSweet.pie_svgrepo_com,
                  category: 'Sweets',
                  index: 5),
            ],
          ),
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
          child: ListView(
            shrinkWrap: true,
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: [
              CardFood(
                  idCategory: 1,
                  urlImage:
                      'https://st.depositphotos.com/1042799/1706/i/600/depositphotos_17064571-stock-photo-sushi-set.jpg',
                  cookingTime: '30-45 min',
                  titleCard: 'eel & leaf',
                  descriptionCard: '3601 Indian Way Crk'),
              CardFood(
                  idCategory: 2,
                  urlImage:
                      'https://st4.depositphotos.com/15827116/31241/i/600/depositphotos_312414474-stock-photo-top-view-tasty-spicy-seafood.jpg',
                  cookingTime: '30-45 min',
                  titleCard: 'Noodles & Ramen',
                  descriptionCard: '812 Avenue, 153673'),
              CardFood(
                  idCategory: 3,
                  urlImage:
                      'https://st2.depositphotos.com/1326558/7163/i/600/depositphotos_71632883-stock-photo-mexican-tacos-with-meat-vegetables.jpg',
                  cookingTime: '10-20 min',
                  titleCard: 'Tacos',
                  descriptionCard: '801 Ciudad de México'),
              CardFood(
                  idCategory: 4,
                  urlImage:
                      'https://st4.depositphotos.com/1020618/23910/i/600/depositphotos_239107218-stock-photo-tasty-burger-with-french-fries.jpg',
                  cookingTime: '10-15 min',
                  titleCard: 'Burgers',
                  descriptionCard:
                      'Av. La Mar 1328 Miraflores, Lima 15084 Perú'),
              CardFood(
                  idCategory: 5,
                  urlImage:
                      'https://st2.depositphotos.com/1692343/5636/i/600/depositphotos_56360413-stock-photo-hot-homemade-pepperoni-pizza.jpg',
                  cookingTime: '20-30 min',
                  titleCard: 'Pizzas',
                  descriptionCard: 'Av. La Marina 1598, Lima 15084 Perú'),
              CardFood(
                  idCategory: 6,
                  urlImage:
                      'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                  cookingTime: '20-30 min',
                  titleCard: 'Sweets',
                  descriptionCard:
                      'Av. Benavides 1235 Miraflores 01 Lima, Perú')
            ],
          ),
        )
      ],
    );
  }

  Widget _listCategory(
      {required IconData icon, required String category, required int index}) {
    return GetBuilder<HomeController>(
        builder: ((controller) => GestureDetector(
            onTap: () {
              controller.changeCategory(index);
              _scrollToIndex(index);
            },
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
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 5.0),
                        child: Icon(
                          icon,
                          color: controller.indexSelectCategory.value == index
                              ? const Color.fromRGBO(222, 218, 218, 1)
                              : const Color.fromRGBO(44, 43, 43, 1),
                          size: 40.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 15.0),
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
                ))))));
  }

  Widget CardFood(
      {required int idCategory,
      required String urlImage,
      required String cookingTime,
      required String titleCard,
      required String descriptionCard}) {
    return GetBuilder<HomeController>(
        builder: (controller) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (() {
                    controller.viewDetailFood(idCategory, urlImage, cookingTime,
                        titleCard, descriptionCard);
                  }),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(
                              urlImage,
                              fit: BoxFit.fill,
                              width: 370.0,
                              height: 185.0,
                            ),
                          ),
                          Container(
                            width: 110.0,
                            height: 40.0,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Text(
                              cookingTime,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                  color: Color.fromRGBO(23, 22, 22, 1)),
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
                        titleCard,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: backgroundColor),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          descriptionCard,
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
            ));
  }
}
