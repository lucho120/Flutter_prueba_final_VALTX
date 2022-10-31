import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/content_detail_food.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/draggable_scrollable_food.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/header_detail_food.dart';

class DetailFoodView extends StatelessWidget {
  const DetailFoodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('data'),
      ), */
      body: ContentDetailFood(),
    );
  }
}
