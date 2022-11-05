class CardFoods {
  int idCategory = 0;
  String urlImage = '';
  String descriptionCard = '';
  String price = '';

  CardFoods(
      {required this.idCategory,
      required this.urlImage,
      required this.descriptionCard,
      required this.price});

  CardFoods.fromMap(Map<String, dynamic> map) {
    idCategory = map['idCategory'];
    urlImage = map['urlImage'];
    descriptionCard = map['descriptionCard'];
    price = map['price'];
  }
}
