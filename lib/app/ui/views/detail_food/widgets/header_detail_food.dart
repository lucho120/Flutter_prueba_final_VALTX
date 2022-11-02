import 'package:app_prueba_final_valtx/app/ui/components/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';

class HeaderDetailFood extends StatelessWidget {
  const HeaderDetailFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailFoodController>(
        builder: (controller) => Stack(
              children: [
                Obx(() => controller.urlImage.value != ''
                    ? ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        child: Image.network(
                          controller.urlImage.value,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 340.0,
                        ),
                      )
                    : Image.network(controller.urlImage.value)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => controller.backHome(),
                        child: Container(
                          margin: const EdgeInsets.only(top: 40.0, left: 20.0),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(39, 39, 41, 1),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.arrow_back,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 40.0, right: 20.0),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(39, 39, 41, 1),
                          borderRadius: BorderRadius.circular(25.0)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          CustomIcons.noun_more_1522747,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ));
  }
}
