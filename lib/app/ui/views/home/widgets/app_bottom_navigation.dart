import 'package:flutter/material.dart';

import 'package:app_prueba_final_valtx/app/ui/components/custom_icons.dart';

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
            icon: Icon(
              CustomIcons.home_icon_227229,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.layers_icon_160942,
              color: Colors.black,
            ),
            label: 'layouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons
                  .instagram_shop_shopping_social_media_brand_instagram_menu_icon_197292,
              color: Colors.black,
            ),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.noun_user_5271921,
              size: 35.0,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
