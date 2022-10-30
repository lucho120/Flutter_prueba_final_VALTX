import 'package:app_prueba_final_valtx/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CardsFood extends StatelessWidget {
  const CardsFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: const Text(
            'Fastest delivery time',
            style: TextStyle(
                fontSize: 24.0,
                color: backgroundColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
            width: 380.0,
            height: 245.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardFood(
                    urlImage:
                        'https://st.depositphotos.com/1042799/1706/i/600/depositphotos_17064571-stock-photo-sushi-set.jpg',
                    cookingTime: '30-45 min',
                    titleCard: 'eel & leaf',
                    descriptionCard: '3601 Indian Way Crk'),
                CardFood(
                    urlImage:
                        'https://st4.depositphotos.com/15827116/31241/i/600/depositphotos_312414474-stock-photo-top-view-tasty-spicy-seafood.jpg',
                    cookingTime: '30-45 min',
                    titleCard: 'Noodles & Ramen',
                    descriptionCard: '812 Avenue, 153673'),
                CardFood(
                    urlImage:
                        'https://st2.depositphotos.com/1326558/7163/i/600/depositphotos_71632883-stock-photo-mexican-tacos-with-meat-vegetables.jpg',
                    cookingTime: '10-20 min',
                    titleCard: 'Tacos',
                    descriptionCard: '801 Ciudad de México'),
                CardFood(
                    urlImage:
                        'https://st4.depositphotos.com/1020618/23910/i/600/depositphotos_239107218-stock-photo-tasty-burger-with-french-fries.jpg',
                    cookingTime: '10-15 min',
                    titleCard: 'Burgers',
                    descriptionCard:
                        'Av. La Mar 1328 Miraflores, Lima 15084 Perú'),
                CardFood(
                    urlImage:
                        'https://st2.depositphotos.com/1692343/5636/i/600/depositphotos_56360413-stock-photo-hot-homemade-pepperoni-pizza.jpg',
                    cookingTime: '20-30 min',
                    titleCard: 'Pizzas',
                    descriptionCard: 'Av. La Marina 1598, Lima 15084 Perú'),
                CardFood(
                    urlImage:
                        'https://st3.depositphotos.com/14670260/18915/i/600/depositphotos_189155102-stock-photo-candies-with-jelly-and-sugar.jpg',
                    cookingTime: '20-30 min',
                    titleCard: 'Sweets',
                    descriptionCard:
                        'Av. Benavides 1235 Miraflores 01 Lima, Perú')
              ],
            ))
      ],
    );
  }

  Widget CardFood(
      {required String urlImage,
      required String cookingTime,
      required String titleCard,
      required String descriptionCard}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: (() {
            print('object');
          }),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(
                      urlImage,
                      fit: BoxFit.fill,
                      width: 370.0,
                      height: 185.0,
                    ),
                  ),
                  Container(
                    width: 110.0,
                    height: 40.0,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Text(
                      cookingTime,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.0,
                          color: Color.fromRGBO(23, 22, 22, 1)),
                    ),
                  )
                ],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(left: 25.0, top: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleCard,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    color: backgroundColor),
              ),
              Container(
                margin: const EdgeInsets.only(top: 3.0),
                child: Text(
                  descriptionCard,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: Color.fromRGBO(80, 80, 80, 1)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
