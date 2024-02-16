import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Foamposite',
        price: '256',
        imagePath: 'lib/shoes/air foamposite.png',
        desc:
            'The Nike Air Foamposite One is a cross between b-ball greatness and off-court style. '),
    Shoe(
        name: 'AirForce 1',
        price: '121',
        imagePath: 'lib/shoes/Airforce 1.png',
        desc:
            'Quicker than 1, 2, 3—the original hoops shoe lets you step in and get going.'),
    Shoe(
        name: 'Dunk High',
        price: '121',
        imagePath: 'lib/shoes/Dunk high.png',
        desc:
            "The '80s basketball icon returns with  original university colours."),
    Shoe(
        name: 'P-6000',
        price: '131',
        imagePath: 'lib/shoes/P-6000 premium.png',
        desc: "The P-6000 takes early 2000s running to modern heights."),
    Shoe(
        name: 'Revolution',
        price: '50',
        imagePath: 'lib/shoes/Revolution 7.png',
        desc:
            'Sort of soft cushioning and support that might change your running world.'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
