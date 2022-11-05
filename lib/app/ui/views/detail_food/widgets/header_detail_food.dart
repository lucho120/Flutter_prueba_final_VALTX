import 'package:app_prueba_final_valtx/app/ui/components/custom_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/buttons_actions.dart';
import 'package:app_prueba_final_valtx/core/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';

class HeaderDetailFood extends StatelessWidget {
  const HeaderDetailFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return GetBuilder<DetailFoodController>(
        builder: (controller) => SizedBox(
              width: double.infinity,
              height: responsive.hp(40.0),
              child: Stack(
                children: [
                  Obx(() => controller.urlImage.value != ''
                      ? ClipRRect(
                          child: Hero(
                            tag: controller.idCategory,
                            child: Image.network(
                              controller.urlImage.value,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: responsive.hp(40.0),
                            ),
                          ),
                        )
                      : Hero(
                          tag: controller.idCategory,
                          child: Image.network(controller.urlImage.value))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () => controller.backHome(),
                          child: ButtonsActions(
                            colorBackground:
                                const Color.fromRGBO(39, 39, 41, 1),
                            colorIcon: Colors.white,
                            icon: Icons.arrow_back,
                            responsive: responsive,
                          )),
                      ButtonsActions(
                        colorBackground: const Color.fromRGBO(39, 39, 41, 1),
                        colorIcon: Colors.white,
                        icon: CustomIcons.noun_more_1522747,
                        responsive: responsive,
                      )
                    ],
                  ),
                ],
              ),
            ));
  }
}
