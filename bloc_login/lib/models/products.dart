import 'package:bloc_login/models/topselling.dart';
import 'package:flutter/material.dart';



class ProductList {
  List<Product> productList = [
    Product(
        imagePath: 'assets/ff_milk.jpg',
        productName: 'Flavourful Fusions - Milk',
        desc: 'Packed with Milk, Cashews and Almonds',
        price: '£5.00 / 500gm'),
    Product(
        imagePath: 'assets/minisoan.jpg',
        productName: 'Soan Papdi',
        desc: 'Flaky, Sweet Delight.',
        price: '£3.90 / 500gm'),
    Product(
        imagePath: 'assets/aloobujia.jpg',
        productName: 'Aloo Bhujia',
        desc: 'Spicy Potato Snack.',
        price: '£1.29 / 200gm'),
  ];

  List<Product> getProductList() {
    return productList;
  }
}

