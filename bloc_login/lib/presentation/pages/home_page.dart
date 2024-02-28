import 'package:bloc_login/models/products.dart';
import 'package:bloc_login/models/topselling.dart';
import 'package:bloc_login/presentation/pages/widgets/botton_navBar.dart';
import 'package:bloc_login/presentation/pages/widgets/menu_navBar.dart';
import 'package:bloc_login/presentation/pages/widgets/popular_category.dart';
import 'package:bloc_login/presentation/pages/widgets/top_selling.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuNavBar(),
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: 35,
              height: 35,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/35/85/HD-wallpaper-actors-robert-downey-jr-actor-american-sunglasses-smile.jpg'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 1,
                ),
                hintText: 'Searching for Sweets, Namkeens...?',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.mic),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Popular Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const PopularCat(),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 90, 83, 167),
              ),
              height: 85,
              //width: 200,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 13.0, top: 8),
                        child: Text(
                          'Pro Plus',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 13.0),
                        child: Text('Free Delivery + Extra Discounts',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 13.0, top: 7),
                        child: Text('on all orders. Join now',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Most Selling',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Product product = Product(
                      imagePath: 'assets/ff_milk.jpg',
                      productName: 'Flavourful Fusions - Milk',
                      desc: 'Packed with Milk, Cashews and Almonds',
                      price: '£5.00 / 500gm');
                  return TopSelling(
                    product: product,
                  );
                },
              ),
            ),
            const Divider(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
