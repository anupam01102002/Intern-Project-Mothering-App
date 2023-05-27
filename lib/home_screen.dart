import 'package:flutter/material.dart';
import './child_details.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:badges/badges.dart' as badges;
import 'Home.dart';

class HomeScreen extends StatelessWidget {
  // final Color primaryColor = const Color(0xFF7CDAFC);
  // final Color iconColor = Colors.white;

  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen(BuildContext context) {
    return [
      Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Color.fromRGBO(124, 218, 252, 1),
          actions: <Widget>[
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: -3, end: -1),
              badgeContent: Text('3'),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: -3, end: -1),
              badgeContent: Text('3'),
              child: IconButton(
                icon: Icon(Icons.notifications_outlined),
                selectedIcon: Icon(Icons.notifications),
                onPressed: () {
                  // Add your notifications icon functionality here
                },
              ),
            ),
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: -3, end: -1),
              badgeContent: Text('3'),
              child: IconButton(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                onPressed: () {
                  // Add your favorites icon functionality here
                },
              ),
            ),
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: -3, end: -1),
              badgeContent: Text('3'),
              child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                selectedIcon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Add your cart icon functionality here
                },
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            width:
                MediaQuery.of(context).size.width * 0.8, // 80% of screen width
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 100,
                  child: DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(124, 218, 252, 1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          // Add profile icon image here
                          // backgroundImage: AssetImage('assets/profile_image.png'),
                          // Use the above line if you have a custom profile image
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Color.fromRGBO(124, 218, 252, 1),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'User Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'EmailId',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  elevation: 4, // Set the desired elevation value
                  child: Container(
                    height:
                        50, // Set the total height of the icons row container to 50
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width:
                                  32, // Adjust the width of the SizedBox as needed
                              height:
                                  32, // Adjust the height of the SizedBox as needed
                              child: IconButton(
                                icon: const Icon(
                                  Icons.person,
                                  color: Color.fromRGBO(150, 150, 150, 1),
                                ),
                                onPressed: () {
                                  // Handle Home icon tap
                                },
                              ),
                            ),
                            const Flexible(
                              child: Text(
                                'Account',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color.fromRGBO(150, 150, 150, 1),
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width:
                                  32, // Adjust the width of the SizedBox as needed
                              height:
                                  32, // Adjust the height of the SizedBox as needed
                              child: IconButton(
                                icon: const Icon(
                                  Icons.shopping_cart,
                                  color: Color.fromRGBO(150, 150, 150, 1),
                                ),
                                onPressed: () {
                                  // Handle Shop icon tap
                                },
                              ),
                            ),
                            const Flexible(
                              child: Text(
                                'Order History',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color.fromRGBO(150, 150, 150, 1),
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width:
                                  32, // Adjust the width of the SizedBox as needed
                              height:
                                  32, // Adjust the height of the SizedBox as needed
                              child: IconButton(
                                icon: const Icon(
                                  Icons.fire_truck,
                                  color: Color.fromRGBO(150, 150, 150, 1),
                                ),
                                onPressed: () {
                                  // Handle History icon tap
                                },
                              ),
                            ),
                            const Flexible(
                              child: Text(
                                'History',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color.fromRGBO(150, 150, 150, 1),
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width:
                                  32, // Adjust the width of the SizedBox as needed
                              height:
                                  32, // Adjust the height of the SizedBox as needed
                              child: IconButton(
                                icon: const Icon(
                                  Icons.compare_arrows,
                                  color: Color.fromRGBO(150, 150, 150, 1),
                                ),
                                onPressed: () {
                                  // Handle Search icon tap
                                },
                              ),
                            ),
                            const Flexible(
                              child: Text(
                                'Cash Refund',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color.fromRGBO(150, 150, 150, 1),
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 20,
                    ),
                    title: Text('Home'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications,
                      size: 20,
                    ),
                    title: Text('Notification'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: Icon(
                      Icons.label,
                      size: 20,
                    ),
                    title: Text('Offer Zone'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      size: 20,
                    ),
                    title: Text(
                      'Mothering',
                      style: TextStyle(
                        color: Color.fromRGBO(124, 218, 252, 1),
                      ),
                    ),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.blender_outlined,
                      size: 20,
                    ),
                    title: Text(
                      'Baby Hug',
                      style: TextStyle(
                        color: Color.fromRGBO(124, 218, 252, 1),
                      ),
                    ),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.blender_outlined,
                      size: 20,
                    ),
                    title: Text(
                      'Baby Hug',
                      style: TextStyle(
                        color: Color.fromRGBO(124, 218, 252, 1),
                      ),
                    ),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: Text(
                      'My Activity',
                    ),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: Text(
                      'Shop By Category',
                    ),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.blender_outlined,
                      size: 20,
                    ),
                    title: Text(
                      'Baby Hug',
                      style: TextStyle(
                        color: Color.fromRGBO(124, 218, 252, 1),
                      ),
                    ),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.blender_outlined,
                      size: 20,
                    ),
                    title: Text(
                      'Baby Hug',
                      style: TextStyle(
                        color: Color.fromRGBO(124, 218, 252, 1),
                      ),
                    ),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.star,
                      size: 20,
                    ),
                    title: Text('Rate this App'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.share,
                      size: 20,
                    ),
                    title: Text('Share this app'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.headphones,
                      size: 20,
                    ),
                    title: Text('Support'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.rounded_corner,
                      size: 20,
                    ),
                    title: Text('Policies'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
                Container(
                  height: 30, // Set the height of the ListTile to 15
                  child: ListTile(
                    leading: const Icon(
                      Icons.handshake,
                      size: 20,
                    ),
                    title: Text('Sell with us'),
                    onTap: () {
                      // Handle Home item tap
                    },
                  ),
                ),
              ],
            ),
          ),
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
      Scaffold(
        body: Center(
          child: Text('Shop'),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text('Play Area'),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text('MSocial'),
        ),
      ),
      Scaffold(
        body: Center(
          child: Text('Magazine'),
        ),
      ),
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
