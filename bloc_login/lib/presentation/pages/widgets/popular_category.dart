import 'package:flutter/material.dart';

class PopularCat extends StatelessWidget {
  const PopularCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 218, 214),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/sweets.jpg',
                  height: 80,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  'Sweets',
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 9, 9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        //namkeen
        const SizedBox(width: 5),
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 218, 214),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/namkeen.jpg',
                  height: 80,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  'Namkeen',
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 9, 9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        //beverages
        const SizedBox(width: 5),
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 218, 214),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/beverages.JPG',
                  height: 80,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  'Beverages',
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 9, 9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
