import 'package:app_prueba_final_valtx/app/ui/views/home/home_controller.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/widgets/app_bottom_navigation.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/widgets/categories.dart';
import 'package:app_prueba_final_valtx/app/ui/views/home/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: ((controller) => Scaffold(
            body: Container(
              margin: const EdgeInsets.only(top: 55.0),
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: const [
                  Header(),
                  Categories(),
                ],
              ),
            ),
            bottomNavigationBar: const AppBottomNavigationView())));
  }
}
