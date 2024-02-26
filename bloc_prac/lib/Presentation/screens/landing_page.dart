import 'package:bloc_prac/BloC/landing_page_bloc/landing_page_bloc.dart';
import 'package:bloc_prac/Presentation/screens/pages/categories_page.dart';
import 'package:bloc_prac/Presentation/screens/pages/home_page.dart';
import 'package:bloc_prac/Presentation/screens/pages/offers_page.dart';
import 'package:bloc_prac/Presentation/screens/pages/support_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> bottomNavItem = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
  BottomNavigationBarItem(
    icon: Icon(Icons.local_offer_outlined),
    label: 'Offers',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.category_outlined),
    label: 'Categories',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.support_agent_outlined),
    label: 'Support',
  ),
];
const List<Widget> bottomNavScreen = <Widget>[
  HomePage(),
  OffersPage(),
  CategoriesPage(),
  SupportPage(),
];

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItem,
            currentIndex: state.tabIndex,
            selectedItemColor: const Color.fromARGB(255, 80, 9, 9),
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<LandingPageBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
