import 'package:flutter/material.dart';

import 'package:app_prueba_final_valtx/app/ui/icons/custom_home_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_layout_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_shopping_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_user_icons.dart';

class AppBottomNavigationView extends StatelessWidget {
  const AppBottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: BottomNavigationBar(
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CustomHome.home_icon_227229, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomLayout.layers_icon_icons_com_63710,
              color: Colors.black,
            ),
            label: 'layouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomShopping.shopping_bag_icon_icons_com_63448,
              color: Colors.black,
            ),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomUser.profile_icon_183761,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
