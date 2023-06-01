import 'package:flutter/material.dart';
import 'package:mothering_app/profile.dart';

class MotheringAppBarDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                          MaterialPageRoute(builder: (context) => MyProfile()),
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
    );
  }
}
