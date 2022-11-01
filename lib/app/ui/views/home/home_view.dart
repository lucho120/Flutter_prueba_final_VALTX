import 'package:flutter/material.dart';

import 'package:app_prueba_final_valtx/app/ui/views/home/widgets/app_bottom_navigation.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/widgets/cards_food.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/widgets/header_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.only(top: 25.0),
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [HeaderHome(), CardsFood()],
          ),
        ),
        bottomNavigationBar: const AppBottomNavigationView());
  }
}
