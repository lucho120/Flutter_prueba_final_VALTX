import 'package:app_prueba_final_valtx/core/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:app_prueba_final_valtx/app/ui/components/custom_assets.dart';
import 'package:app_prueba_final_valtx/app/ui/components/custom_icons.dart';
import 'package:app_prueba_final_valtx/core/theme/app_color.dart';
import 'package:get/get.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
        margin: EdgeInsets.only(top: responsive.hp(0.3)),
        height: responsive.hp(35.0),
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
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: responsive.hp(1.0)),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            height: responsive.hp(8.0),
                            decoration: const BoxDecoration(
                                color: backgroundColor, shape: BoxShape.circle),
                            child: Icon(
                              CustomIcons.grid_menu_shape_icon_193558__1_,
                              size: responsive.dp(4.0),
                              color: Colors.white,
                            ),
                          )),
                      Expanded(
                        flex: 9,
                        child: SizedBox(
                          child: ListTile(
                            title: Text(
                              'deliver to',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(93, 91, 91, 1),
                                  fontSize: responsive.hp(1.5)),
                            ),
                            subtitle: Text(
                              textAlign: TextAlign.center,
                              'Home',
                              style: TextStyle(
                                  fontFamily: 'CustomSearch',
                                  fontWeight: FontWeight.bold,
                                  color: backgroundColor,
                                  fontSize: responsive.hp(3.0)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            height: responsive.hp(8.0),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/avatar.jpg')),
                                shape: BoxShape.circle),
                          )),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Lookin' for something special?",
                  style: TextStyle(
                    fontFamily: 'CustomSearch',
                    color: backgroundColor,
                    fontSize: responsive.dp(3.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                margin: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      color: backgroundColor,
                      size: responsive.dp(3.0),
                    ),
                    border: InputBorder.none,
                    hintText: 'Find whatever you need',
                    hintStyle: TextStyle(
                        color: const Color.fromRGBO(145, 142, 142, 1),
                        fontSize: responsive.dp(2.0)),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
