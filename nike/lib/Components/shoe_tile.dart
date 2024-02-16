// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //show pic
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath),
        ),

        //desc
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            shoe.desc,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //price and details
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //shoe name
                  Text(
                    shoe.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 5),

                  //price
                  Text(
                    '\$' + shoe.price,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),

              //plus btn
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )

        //add to cart btn
      ]),
    );
  }
}
