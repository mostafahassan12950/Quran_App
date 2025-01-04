import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<Products> _cart = [];
  List<Products> get cart => _cart;

  void toogleFavorite(Products product) {
    // Toggle favorite functionality, you can change the name as needed
    if (_cart.contains(product)) {
      for (Products element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  // For incrementing quantity
  incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  // For decrementing quantity
  decrementQtn(int index) {
    if (_cart[index].quantity <= 1) {
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }

  // For calculating the total price
  totalPrice() {
    double myTotal = 0.0; // initial total
    for (Products element in _cart) {
      myTotal += element.price * element.quantity;
    }
    return myTotal;
  }

  // Method to remove an item from the cart
  removeCartItem(int index) {
    _cart.removeAt(index);
    notifyListeners();
  }

  // Static method to access the provider
  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
