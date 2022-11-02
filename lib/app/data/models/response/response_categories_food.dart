import 'package:flutter/material.dart';

class CardCategoryFood {
  int idCategory = 0;
  String urlImage = '';
  String cookingTime = '';
  String titleCard = '';
  String descriptionCard = '';

  CardCategoryFood(
      {required this.idCategory,
      required this.urlImage,
      required this.cookingTime,
      required this.titleCard,
      required this.descriptionCard});

  CardCategoryFood.fromMap(Map<String, dynamic> map) {
    idCategory = map['idCategory'];
    urlImage = map['urlImage'];
    cookingTime = map['cookingTime'];
    titleCard = map['titleCard'];
    descriptionCard = map['descriptionCard'];
  }
}

class ButtonCategoryFood {
  int idCategory = 0;
  IconData iconData = Icons.more;
  String category = '';

  ButtonCategoryFood(
      {required this.idCategory,
      required this.iconData,
      required this.category});

  ButtonCategoryFood.fromMap(Map<String, dynamic> map) {
    idCategory = map['idCategory'];
    iconData = map['iconData'];
    category = map['category'];
  }
}
