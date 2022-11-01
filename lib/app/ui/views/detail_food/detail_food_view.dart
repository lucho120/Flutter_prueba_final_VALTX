import 'package:flutter/material.dart';

import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/content_detail_food.dart';

class DetailFoodView extends StatelessWidget {
  const DetailFoodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentDetailFood(),
    );
  }
}
