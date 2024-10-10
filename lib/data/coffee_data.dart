import 'package:coffee_shop/models/coffee_model.dart';

class CoffeeData {
  static List<CoffeeModel> coffeeList = [
    CoffeeModel(
      rating: 4.5,
      complement: "with Oat Milk",
      name: "Macchiato",
      image: "assets/images/coffee1.png",
      price: 4.99,
    ),
    CoffeeModel(
      rating: 4.8,
      complement: "with Chocolate",
      name: "Vanilla",
      image: "assets/images/coffee2.png",
      price: 4.99,
    ),
    CoffeeModel(
      rating: 4.7,
      complement: "with Caramel",
      name: "Caramel",
      image: "assets/images/coffee3.png",
      price: 4.99,
    ),
    CoffeeModel(
      rating: 4.6,
      complement: "with Chocolate",
      name: "Mocha",
      image: "assets/images/coffee4.png",
      price: 4.99,
    ),
    CoffeeModel(
      rating: 4.9,
      complement: "with Caramel",
      name: "Frappuccino",
      image: "assets/images/coffee1.png",
      price: 4.99,
    ),
    CoffeeModel(
      rating: 4.7,
      complement: "with Chocolate",
      name: "Frappuccino",
      image: "assets/images/coffee2.png",
      price: 4.99,
    ),
  ];
  static List<String> coffee_types = [
    "Capuccino",
    "Latte",
    "Mocha",
    "Americano",
    "Macchiato",
    "Frappuccino",
  ];
}
