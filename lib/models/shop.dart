import 'package:flutter/material.dart';
import 'package:login_pj/models/product.dart';

class Shop extends ChangeNotifier {
  // prosuct for sale
  final List<Product> _shop = [
    Product(
        name: 'first product',
        price: 149,
        description: "dis shit is dope",
        imagePath: 'lib/assets/images/untitled.png'),
    Product(
        name: 'second product',
        price: 149,
        description: "dis shit is dope",
        imagePath: 'lib/assets/images/6.png'),
    Product(
        name: 'third product',
        price: 149,
        description: "dis shit is dope",
        imagePath: 'lib/assets/images/bb.png'),
    Product(
        name: 'fourth product',
        price: 149,
        description: "dis shit is dope",
        imagePath: 'lib/assets/images/skeleton final pj2.png'),
  ];

  // use rcart
  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;
  // get user cart
  List<Product> get cart => _cart;

  // add item to cart

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }
  // remove item from cart

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
