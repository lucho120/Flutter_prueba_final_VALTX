import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/data/data_foods/cards_foods.dart';
import 'package:app_prueba_final_valtx/app/data/models/response/response_card_foods.dart';
import 'package:app_prueba_final_valtx/app/ui/components/custom_assets.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/selected_food.dart';
import 'package:app_prueba_final_valtx/core/utils/responsive.dart';

import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';
import 'package:app_prueba_final_valtx/core/theme/app_color.dart';

class DraggableScrollableFood extends StatelessWidget {
  const DraggableScrollableFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //variables
    List<CardFoods> _cards_foods =
        CARDS_FOODS.map((cf) => CardFoods.fromMap(cf)).toList();
    final Responsive responsive = Responsive.of(context);
    return GetBuilder<DetailFoodController>(
        builder: (controller) => DraggableScrollableSheet(
              initialChildSize: 0.65,
              maxChildSize: 1.0,
              minChildSize: 0.65,
              builder: (BuildContext context, myscrollController) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.white)),
                  child: SingleChildScrollView(
                    controller: myscrollController,
                    child: Column(
                      children: [
                        Obx(() => Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 5.0),
                              child: ListTile(
                                title: Text(
                                  controller.titleCard.value,
                                  style: TextStyle(
                                      fontSize: responsive.dp(3.7),
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    controller.descriptionCard.value,
                                    style: TextStyle(
                                        fontSize: responsive.dp(1.8),
                                        color:
                                            const Color.fromRGBO(92, 93, 92, 1),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            )),
                        Obx(() => Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Delivery time',
                                    style: TextStyle(
                                        fontSize: responsive.dp(2.0),
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            66, 66, 66, 1)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '${controller.cookingTime}utes',
                                      style: TextStyle(
                                          fontSize: responsive.dp(1.8),
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              66, 66, 66, 1)),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery cost',
                                style: TextStyle(
                                    fontSize: responsive.dp(2.0),
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(66, 66, 66, 1)),
                              ),
                              // ignore: prefer_const_constructors
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text(
                                  '\$ 5-10',
                                  style: TextStyle(
                                      fontSize: responsive.dp(1.8),
                                      fontWeight: FontWeight.w700,
                                      color:
                                          const Color.fromRGBO(66, 66, 66, 1)),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: responsive.hp(6.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          227, 227, 227, 1),
                                      borderRadius:
                                          BorderRadius.circular(18.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Classic',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontSize: responsive.dp(1.6),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Experemental',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontSize: responsive.dp(1.6),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Speicality',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontSize: responsive.dp(1.6),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Experemental',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontSize: responsive.dp(1.6),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Speicality',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontSize: responsive.dp(1.6),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Experemental',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontSize: responsive.dp(1.6),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 5.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Speicality',
                                      style: TextStyle(
                                          color: backgroundColor,
                                          fontSize: responsive.dp(1.6),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: responsive.wp(60.0),
                                    childAspectRatio: responsive.hp(0.08),
                                    crossAxisSpacing: 10.0),
                            scrollDirection: Axis.vertical,
                            physics: const ScrollPhysics(),
                            padding: const EdgeInsets.only(top: 10.0),
                            shrinkWrap: true,
                            itemCount: _cards_foods.length,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                padding:
                                                    const EdgeInsets.all(0.0),
                                                elevation:
                                                    0.0 // Background color
                                                ),
                                            child: Stack(
                                              children: [
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                    child: FadeInImage
                                                        .assetNetwork(
                                                            fit: BoxFit.fill,
                                                            width: responsive
                                                                .wp(50.0),
                                                            placeholder:
                                                                loading_image,
                                                            image: _cards_foods[
                                                                    index]
                                                                .urlImage),
                                                  ),
                                                )
                                              ],
                                            ),
                                            onPressed: () {
                                              showModalBottomSheet<void>(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  25.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  25.0)),
                                                ),
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return SelectedFood(
                                                      context: context,
                                                      urlImage:
                                                          _cards_foods[index]
                                                              .urlImage);
                                                },
                                              );
                                            }),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 7.0),
                                            width: responsive.wp(45.0),
                                            height: responsive.hp(4.0),
                                            child: Text(
                                              _cards_foods[index]
                                                  .descriptionCard,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: responsive.hp(1.5),
                                                  color: backgroundColor),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin:
                                                const EdgeInsets.only(top: 3.0),
                                            padding: const EdgeInsets.all(15.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .circular(20.0),
                                                color: const Color.fromRGBO(
                                                    236, 236, 236, 1)),
                                            child: Text(
                                              _cards_foods[index].price,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: responsive.hp(2.0),
                                                  color: backgroundColor),
                                            ),
                                          ),
                                        ],
                                      ))
                                  /* decoration: BoxDecoration(
                                           border:
                                               Border.all(color: Colors.indigo) */
                                ],
                              );
                            })
                      ],
                    ),
                  ),
                );
              },
            ));
  }
}
