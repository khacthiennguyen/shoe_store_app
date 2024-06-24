import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart  extends ChangeNotifier{
  // list of shoes sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Nike",
        price: "213",
        imagePath: "lib/images/air-max-pulse-shoes-7m554k.png",
        description: "Thinking for the shoe"),
    Shoe(
        name: "Air Nike",
        price: "213",
        imagePath:
            "lib/images/court-borough-low-recraft-big-kids-shoes-dDK0q4.png",
        description: "Thinking for the shoe"),
    Shoe(
        name: "Air Nike",
        price: "213",
        imagePath:
            "lib/images/court-vision-mid-next-nature-mens-shoes-Ks2QFk.png",
        description: "Thinking for the shoe"),
    Shoe(
        name: "Air Nike",
        price: "213",
        imagePath: "lib/images/waffle-nav-mens-shoes-CC5hwR.png",
        description: "Thinking for the shoe"),
  ];

  //list of items in user cart

  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
List<Shoe> getUserCart(){
  return userCart;
}
  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items form cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
