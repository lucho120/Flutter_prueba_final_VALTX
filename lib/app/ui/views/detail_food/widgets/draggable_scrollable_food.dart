import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_prueba_final_valtx/app/ui/views/detail_food/detail_food_controller.dart';
import 'package:app_prueba_final_valtx/core/theme/app_color.dart';

class DraggableScrollableFood extends StatelessWidget {
  const DraggableScrollableFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailFoodController>(
        builder: (controller) => DraggableScrollableSheet(
              initialChildSize: 0.65,
              maxChildSize: 1.0,
              minChildSize: 0.65,
              builder: (BuildContext context, myscrollController) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.white)),
                  child: SingleChildScrollView(
                    controller: myscrollController,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Obx(() => Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 5.0),
                                  child: ListTile(
                                    title: Text(
                                      controller.titleCard.value,
                                      style: const TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        controller.descriptionCard.value,
                                        style: const TextStyle(
                                            color:
                                                Color.fromRGBO(92, 93, 92, 1),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                )),
                            Obx(() => Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Delivery time',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(66, 66, 66, 1)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15.0),
                                        child: Text(
                                          controller.cookingTime.value,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  66, 66, 66, 1)),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Delivery cost',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(66, 66, 66, 1)),
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '\$ 5-10',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(66, 66, 66, 1)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              227, 227, 227, 1),
                                          borderRadius:
                                              BorderRadius.circular(18.0)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'Classic',
                                          style: TextStyle(
                                              color: backgroundColor,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'Experemental',
                                          style: TextStyle(
                                              color: backgroundColor,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'Speicality',
                                          style: TextStyle(
                                              color: backgroundColor,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        GridView.count(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          primary: false,
                          padding: const EdgeInsets.only(top: 20.0),
                          childAspectRatio: 0.8,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 10.0,
                          crossAxisCount: 2,
                          children: [
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ));
  }

  Widget CardFood(
      {required int idCategory,
      required String urlImage,
      required String descriptionCard,
      required String price}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
            onTap: (() {
              /* controller.viewDetailFood(idCategory, urlImage, cookingTime,
                          titleCard, descriptionCard); */
            }),
            child: GestureDetector(
                //onTap: () => ,
                child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.network(
                  urlImage,
                  fit: BoxFit.fill,
                  width: 370.0,
                ),
              ),
            ))),
        Container(
          margin: const EdgeInsets.only(left: 10.0, top: 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150.0,
                child: Text(
                  descriptionCard,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: backgroundColor),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                    color: const Color.fromRGBO(236, 236, 236, 1)),
                child: Text(
                  price,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      color: backgroundColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
