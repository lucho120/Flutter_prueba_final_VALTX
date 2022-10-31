import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/draggable_scrollable_food.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/widgets/header_detail_food.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const _googleMapsImage =
    'https://miro.medium.com/max/4064/1*qYUvh-EtES8dtgKiBRiLsA.png';

class ContentDetailFood extends StatefulWidget {
  @override
  _ContentDetailFoodState createState() => _ContentDetailFoodState();
}

class _ContentDetailFoodState extends State<ContentDetailFood> {
  double _percent = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
                bottom: MediaQuery.of(context).size.height * 0.3,
                child: const HeaderDetailFood()),
            Positioned.fill(
              child: NotificationListener<DraggableScrollableNotification>(
                  onNotification: (notification) {
                    setState(() {
                      _percent = 2 * notification.extent - 1.0;
                    });

                    return true;
                  },
                  child: const DraggableScrollableFood()),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: -170 * (1 - _percent),
              child: Opacity(
                opacity: _percent,
                child: SizedBox(height: 100.0, child: AppBarDetailFood()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget AppBarDetailFood() {
    return GetBuilder<DetailFoodController>(
        builder: (controller) => AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: GestureDetector(
                  onTap: () => controller.backHome(),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20.0, left: 20.0),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                  )),
              title: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0, right: 30.0),
                  child: Text(
                    controller.titleCard.value,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(top: 20.0, right: 30.0),
                  child: const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ],
            ));
  }
}
