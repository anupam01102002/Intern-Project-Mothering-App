import 'package:flutter/material.dart';
import './Screens/NavBarScreens/magazine.dart';
import './Screens/NavBarScreens/msocial.dart';
import './Screens/NavBarScreens/playArea.dart';
import 'Screens/NavBarScreens/shop.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'Screens/NavBarScreens/home.dart';

class HomeScreen extends StatelessWidget {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen(BuildContext context) {
    return [
      MotheringHomeScreen(),
      MotheringShopScreen(),
      MotheringPlayAreaScreen(),
      MotheringMsocialScreen(),
      MotheringMagazineScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/Home_active.png',
          width: 32,
          height: 32,
        ),
        inactiveIcon: Image.asset(
          'assets/images/Home_inactive.png',
          width: 32,
          height: 32,
        ),
        title: "Home",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/Shop_active.png',
          width: 32,
          height: 32,
        ),
        inactiveIcon: Image.asset(
          'assets/images/Shop_inactive.png',
          width: 32,
          height: 32,
        ),
        title: "Shop",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/Play_area.png',
          width: 32,
          height: 32,
        ),
        title: "Book \n your Play area",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/MSocial_logo.png',
          width: 32,
          height: 32,
        ),
        title: "MSocial",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/Shop_active.png',
          width: 32,
          height: 32,
        ),
        inactiveIcon: Image.asset(
          'assets/images/Shop_inactive.png',
          width: 32,
          height: 32,
        ),
        title: "Magazine",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(context),
      items: _navBarItem(),
      backgroundColor: Color.fromRGBO(124, 218, 252, 1),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
