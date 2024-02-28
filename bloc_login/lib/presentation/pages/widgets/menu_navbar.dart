import 'package:flutter/material.dart';


class MenuNavBar extends StatelessWidget {
  const MenuNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 190),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListTile(
              leading: const Icon(
                Icons.store,
                color: Color.fromARGB(255, 65, 62, 62),
              ),
              title: const Text(
                'Store',
                style: TextStyle(
                    color: Color.fromARGB(255, 65, 62, 62),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => print('Tapped'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListTile(
              leading: const Icon(
                Icons.shopping_bag_outlined,
                color: Color.fromARGB(255, 65, 62, 62),
              ),
              title: const Text(
                'Categories',
                style: TextStyle(
                    color: Color.fromARGB(255, 65, 62, 62),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => print('Tapped'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListTile(
              leading: const Icon(
                Icons.history,
                color: Color.fromARGB(255, 65, 62, 62),
              ),
              title: const Text(
                'Order History',
                style: TextStyle(
                    color: Color.fromARGB(255, 65, 62, 62),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => print('Tapped'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListTile(
              leading: const Icon(
                Icons.help_outline,
                color: Color.fromARGB(255, 65, 62, 62),
              ),
              title: const Text(
                'About Us',
                style: TextStyle(
                    color: Color.fromARGB(255, 65, 62, 62),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => print('Tapped'),
            ),
          ),
          const Divider(
            color: Color.fromARGB(177, 202, 202, 202),
          ),
          const SizedBox(height: 25),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Contact Us',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Email: '),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  'info@amirthini.com',
                  style: TextStyle(color: Color.fromARGB(255, 96, 86, 210)),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Phone: '),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  '01234567890',
                  style: TextStyle(color: Color.fromARGB(255, 96, 86, 210)),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  'Customer Care Support',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text('Mon - Sat: 07:00 AM - 8:00PM'),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text('Sun: 06:00 AM - 7:00 PM'),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text('App Version 2.0'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 100,
              ),
              backgroundColor: const Color.fromARGB(255, 190, 0, 30),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.logout),
            onPressed: () {
              
            },
            label: const Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
