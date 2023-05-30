import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '/profile.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 13,
              backgroundColor: Colors.white,
              // Add profile icon image here
              // backgroundImage: AssetImage('assets/profile_image.png'),
              // Use the above line if you have a custom profile image
              child: Icon(
                Icons.person,
                size: 20,
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
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(124, 218, 252, 1),
        actions: <Widget>[
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -3, end: -1),
            badgeContent: Text('3'),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingScreen()),
                );
              },
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
          width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
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
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ), // Replace with the desired icon
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()),
                          );
                        },
                      )
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 4,
            child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_pin,
                            color: Color.fromRGBO(150, 150, 150, 1),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Deliver to 365420',
                            style: TextStyle(
                              color: Color.fromRGBO(150, 150, 150, 1),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromRGBO(150, 150, 150, 1),
                        ),
                        onPressed: () {
                          // Add your logic for handling dropdown button press
                        },
                      ),
                    ],
                  ),
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.27,
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.all(00.0),
                    child: Image.asset(
                      'assets/images/Add_1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.27 * 0.12,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        '37% Off',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  right: 10.0,
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        size: 18,
                      ),
                      alignment: Alignment.center,
                      color: Color.fromRGBO(124, 219, 253, 1),
                      onPressed: () {
                        // Add your camera button functionality here
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Brandname',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(137, 137, 137, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Rs. 200',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Rs. 200',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(137, 137, 137, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Get it By',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(137, 137, 137, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Monday, Nov 26',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
