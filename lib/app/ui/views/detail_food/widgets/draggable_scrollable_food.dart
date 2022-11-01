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
                                          '${controller.cookingTime}utes',
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
                            CardFood(context,
                                idCategory: 1,
                                urlImage:
                                    'https://st3.depositphotos.com/13349494/17505/i/600/depositphotos_175058098-stock-photo-pasta.jpg',
                                descriptionCard:
                                    'Classic ramen with chicken and egg',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 2,
                                urlImage:
                                    'https://st.depositphotos.com/1507812/1884/i/600/depositphotos_18843809-stock-photo-italian-pasta-with-tomato-sauce.jpg',
                                descriptionCard:
                                    'italian pasta with tomato sauce',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 3,
                                urlImage:
                                    'https://st.depositphotos.com/1003814/4626/i/600/depositphotos_46267763-stock-photo-fried-chicken-fillets.jpg',
                                descriptionCard: 'fried chicken fillets',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 4,
                                urlImage:
                                    'https://static8.depositphotos.com/1005629/806/i/600/depositphotos_8068134-stock-photo-pasta-with-olives-and-parsley.jpg',
                                descriptionCard:
                                    'pasta with olives and parsley',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 5,
                                urlImage:
                                    'https://st.depositphotos.com/1020618/1877/i/600/depositphotos_18772725-stock-photo-grilled-bbq-steaks.jpg',
                                descriptionCard: 'grilled bbq steaks',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 6,
                                urlImage:
                                    'https://st.depositphotos.com/1491329/2998/i/600/depositphotos_29983711-stock-photo-grilled-beef-steak-meat-with.jpg',
                                descriptionCard: 'grilled beef steak meat with',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 7,
                                urlImage:
                                    'https://static6.depositphotos.com/1062035/614/i/600/depositphotos_6147091-stock-photo-duck-fillet.jpg',
                                descriptionCard: 'duck fillet',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 8,
                                urlImage:
                                    'https://static8.depositphotos.com/1005629/806/i/600/depositphotos_8067583-stock-photo-vegetarian-pizza.jpg',
                                descriptionCard: 'vegetarian pizza',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 9,
                                urlImage:
                                    'https://static8.depositphotos.com/1328914/862/i/600/depositphotos_8628006-stock-photo-spaghetti-with-basil-garnish-in.jpg',
                                descriptionCard:
                                    'spaghetti with basil garnish in',
                                price: '\$4,99'),
                            CardFood(context,
                                idCategory: 10,
                                urlImage:
                                    'https://st.depositphotos.com/1158226/2353/i/600/depositphotos_23531407-stock-photo-closeup-of-kebab-in-a.jpg',
                                descriptionCard: 'closeup of kebab in a',
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

  Widget CardFood(BuildContext context,
      {required int idCategory,
      required String urlImage,
      required String descriptionCard,
      required String price}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              elevation: 0.0 // Background color
              ),
          onPressed: () {
            showModalBottomSheet<void>(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
              ),
              elevation: 10.0,
              context: context,
              builder: (BuildContext context) {
                return SelectedFood(urlImage, context);
              },
            );
          },
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
          ),
        ),
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

  Widget SelectedFood(String urlImage, BuildContext context) {
    return GetBuilder<DetailFoodController>(
        builder: (controller) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 40,
                      color: backgroundColor,
                      height: 2.0,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  height: 210.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                      image: DecorationImage(
                          image: NetworkImage(urlImage), fit: BoxFit.cover)),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: Text(
                    'Wheat noodles served in a meat-based broth, flavored with soy sauce and toppings (sliced pork, nori, menma and scallions)',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Nutritional value per plate',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text('380'),
                        Text('kcal'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('13.1'),
                        Text('proteins'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('20.2'),
                        Text('fats'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('35.6'),
                        Text('carbs'),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 50.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(234, 234, 234, 1),
                                  borderRadius: BorderRadius.circular(30.0)),
                              margin: const EdgeInsets.only(right: 20.0),
                              padding: const EdgeInsets.all(15.0),
                              child: const Icon(
                                Icons.add,
                                size: 30.0,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(234, 234, 234, 1),
                                  borderRadius: BorderRadius.circular(30.0)),
                              padding: const EdgeInsets.all(15.0),
                              child: const Icon(
                                Icons.remove,
                                size: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: backgroundColor),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: const [
                                  Text(
                                    'Add to cart',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    '\$4,99',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ));
  }
}
