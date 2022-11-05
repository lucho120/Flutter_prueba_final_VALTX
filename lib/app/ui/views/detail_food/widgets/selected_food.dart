import 'package:app_prueba_final_valtx/app/ui/components/custom_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';
import 'package:app_prueba_final_valtx/core/theme/app_color.dart';
import 'package:app_prueba_final_valtx/core/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SelectedFood extends StatelessWidget {
  String urlImage = '';
  BuildContext context;
  SelectedFood({Key? key, required this.context, required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return GetBuilder<DetailFoodController>(
        builder: (controller) => SizedBox(
              width: double.infinity,
              height: responsive.hp(60.0),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: responsive.hp(5.0),
                        child: Icon(
                          CustomIcons.noun_food_2235482,
                          color: Colors.white,
                          size: responsive.hp(7.0),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: responsive.hp(7.0)),
                      Container(
                        width: double.infinity,
                        height: responsive.dp(19.5),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0)),
                            image: DecorationImage(
                                image: NetworkImage(urlImage),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 10.0),
                        child: Text(
                          'Wheat noodles served in a meat-based broth, flavored with soy sauce and toppings (sliced pork, nori, menma and scallions)',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: responsive.hp(2.0),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                        child: Text(
                          'Nutritional value per plate',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: responsive.hp(2.0)),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '380\nkcal',
                              style: TextStyle(fontSize: responsive.hp(2.0)),
                            ),
                            Text(
                              '13.1\nproteins',
                              style: TextStyle(fontSize: responsive.hp(2.0)),
                            ),
                            Text(
                              '13.1\nproteins',
                              style: TextStyle(fontSize: responsive.hp(2.0)),
                            ),
                            Text(
                              '20.2\nfats',
                              style: TextStyle(fontSize: responsive.hp(2.0)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.only(top: 20.0),
                        height: responsive.dp(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: responsive.wp(50.0),
                              margin: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            234, 234, 234, 1),
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    margin: const EdgeInsets.only(right: 20.0),
                                    padding: const EdgeInsets.all(15.0),
                                    child: Icon(Icons.add,
                                        size: responsive.hp(3.5)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            234, 234, 234, 1),
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    padding: const EdgeInsets.all(15.0),
                                    child: Icon(
                                      Icons.remove,
                                      size: responsive.hp(3.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                                onTap: () => controller.backDetailFood(
                                    context, urlImage),
                                child: Container(
                                  width: responsive.wp(45.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      color: backgroundColor),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: responsive.hp(2.0),
                                        horizontal: responsive.dp(1.0)),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Add to cart',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: responsive.hp(2.0)),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          '\$4,99',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: responsive.hp(2.0)),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ));
  }
}
