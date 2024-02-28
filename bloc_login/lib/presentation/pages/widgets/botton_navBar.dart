// import 'package:bloc_login/Logic/landing_page_bloc/landing_page_bloc.dart';
// import 'package:bloc_login/presentation/pages/categories_page.dart';
// import 'package:bloc_login/presentation/pages/home_page.dart';
// import 'package:bloc_login/presentation/pages/offers_page.dart';
// import 'package:bloc_login/presentation/pages/support_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// List<BottomNavigationBarItem> bottomNavItem = const <BottomNavigationBarItem>[
//   BottomNavigationBarItem(
//     icon: Icon(Icons.home_outlined),
//     label: 'Home',
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.local_offer_outlined),
//     label: 'Offers',
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.category_outlined),
//     label: 'Categories',
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.support_agent_outlined),
//     label: 'Support',
//   ),
// ];
// const List<Widget> bottomNavScreen = <Widget>[
//   HomePAge(),
//   OffersPage(),
//   CategoriesPage(),
//   SupportPage(),
// ];

// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<LandingPageBloc, LandingPageState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Scaffold(
//           body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
//           bottomNavigationBar: BottomNavigationBar(
//             items: bottomNavItem,
//             currentIndex: state.tabIndex,
//             selectedItemColor: const Color.fromARGB(255, 80, 9, 9),
//             unselectedItemColor: Colors.grey,
//             onTap: (index) {
//               BlocProvider.of<LandingPageBloc>(context)
//                   .add(TabChange(tabIndex: index));
//             },
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPageIndex = 0;
  Color iconColor = const Color.fromARGB(255, 85, 84, 84);
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: const Color.fromARGB(255, 255, 218, 214),
      selectedIndex: currentPageIndex,
      destinations: [
        NavigationDestination(
          icon: IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              setState(() {
                iconColor = const Color.fromARGB(255, 80, 9, 9);
              });
            },
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: IconButton(
            icon: const Icon(
              Icons.local_offer_outlined,
            ),
            onPressed: () {
              setState(() {
                iconColor = const Color.fromARGB(255, 80, 9, 9);
              });
            },
          ),
          label: 'Offers',
        ),
        NavigationDestination(
          icon: IconButton(
            icon: Icon(
              Icons.category_outlined,
            ),
            onPressed: () {
              setState(() {
                iconColor = const Color.fromARGB(255, 80, 9, 9);
              });
            },
          ),
          label: 'Categories',
        ),
        NavigationDestination(
          icon: IconButton(
            icon: Icon(Icons.support_agent_outlined),
            onPressed: () {
              setState(() {
                iconColor = const Color.fromARGB(255, 80, 9, 9);
              });
            },
          ),
          label: 'Support',
        ),
      ],
    );
  }
}
