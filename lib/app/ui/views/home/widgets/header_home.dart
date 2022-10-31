import 'package:app_prueba_final_valtx/app/ui/icons/custom_grid_menu_icons.dart';
import 'package:app_prueba_final_valtx/app/ui/icons/custom_search_icons.dart';
import 'package:app_prueba_final_valtx/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    secondaryColor,
                    primaryColor,
                  ],
                )),
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Icon(
                      CustomGridMenu.grid_menu_shape_icon_193558,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 40.0,
                    ),
                  ),
                  title: const Text(
                    'deliver to',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(93, 91, 91, 1),
                        fontSize: 15.0),
                  ),
                  subtitle: const Text(
                    textAlign: TextAlign.center,
                    'Home',
                    style: TextStyle(
                        fontFamily: 'CustomSearch',
                        fontWeight: FontWeight.bold,
                        color: backgroundColor,
                        fontSize: 19.0),
                  ),
                  trailing: const SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/avatar.jpg')),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    "Lookin' for something special?",
                    style: TextStyle(
                      fontFamily: 'CustomSearch',
                      color: backgroundColor,
                      fontSize: 33.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 5.0),
                  child: const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: backgroundColor,
                        size: 30.0,
                      ),
                      border: InputBorder.none,
                      hintText: 'Find whatever you need',
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(145, 142, 142, 1)),
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
