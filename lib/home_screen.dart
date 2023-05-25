import 'package:flutter/material.dart';
import './child_details.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeScreen extends StatelessWidget {
  // final Color primaryColor = const Color(0xFF7CDAFC);
  // final Color iconColor = Colors.white;

  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen(BuildContext context) {
    return [
      Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add your menu icon functionality here
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Add your notifications icon functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Add your favorites icon functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add your cart icon functionality here
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChildDetails()),
                    );
                  },
                  child: const Text(
                    '+ Add Child',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 4,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 8.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Ideal Height',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '80.2 - 95.2 cm',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 25,
                              width: 4,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Ideal Height',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '80.2 - 95.2 cm',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Aayan is 3 Years, 2 Month Old',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 25,
                            width: 95,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            child: const Text(
                              '26 Months',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/Add_1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      Text('a'),
      Text('d'),
      Text('ddsa'),
      Text('dataad'),
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
