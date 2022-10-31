import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_prueba_final_valtx/app/routes/app_routes.dart';
import 'package:app_prueba_final_valtx/app/routes/app_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.HOME,
      getPages: AppViews.views,
    );
  }
}
