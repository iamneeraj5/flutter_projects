import 'package:bloc_login/models/topselling.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TopSelling extends StatelessWidget {
  Product product;
  TopSelling({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 218, 214),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //product pic
          Container(
            width: 300,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                product.imagePath,
                width: 100,
                height: 100,
              ),
            ),
          ),

          //product name
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: Text(
                  product.productName,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 80, 9, 9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          //product ingredients
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  product.desc,
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ),
            ],
          ),

          //price details
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  product.price,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 80, 9, 9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
