import 'package:flutter/material.dart';
// import 'package:flutter_switch/flutter_switch.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class ChildDetails extends StatelessWidget {
  final Color backgroundColor = const Color(0xFFF3FCFF);
  final Color borderColor = Colors.blue;
  final Color buttonColor = Colors.blue;
  final TextStyle boldTextStyle = TextStyle(fontWeight: FontWeight.bold);

  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen(BuildContext context) {
    return [
      //   Scaffold(
      //   backgroundColor: backgroundColor,
      //   body: Center(
      //     child: Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             'Enter your child details to have',
      //             style: boldTextStyle,
      //           ),
      //           const SizedBox(height: 4.0),
      //           const Text(
      //             'personalized shopping and parenting ',
      //           ),
      //           const SizedBox(height: 4.0),
      //           const Text(
      //             'experience.',
      //           ),
      //           const SizedBox(height: 50.0),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: const [
      //               Text(
      //                 'BOY',
      //                 style: TextStyle(
      //                     color: Color.fromRGBO(0, 176, 240, 1),
      //                     fontWeight: FontWeight.normal),
      //               ),
      //               //SwitchExample(),
      //               Text(
      //                 'GIRL',
      //                 style: TextStyle(
      //                     color: Color.fromRGBO(0, 176, 240, 1),
      //                     fontWeight: FontWeight.bold),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(height: 24.0),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 width: 300, // Adjust the width as needed
      //                 height: 40, // Adjust the height as needed
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(50.0),
      //                   border: Border.all(color: Colors.blue),
      //                   color: Colors.white,
      //                 ),
      //                 child: const TextField(
      //                   decoration: InputDecoration(
      //                     border: InputBorder.none,
      //                     hintText: 'Date of Birth',
      //                     hintStyle: TextStyle(
      //                       color: Color.fromRGBO(150, 150, 150, 1),
      //                       fontSize: 16,
      //                     ),
      //                     contentPadding: EdgeInsets.all(12.0),
      //                   ),
      //                   keyboardType: TextInputType.datetime,
      //                   style: TextStyle(
      //                     color: Colors.black,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(height: 24.0),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 width: 300, // Adjust the width as needed
      //                 height: 40, // Adjust the height as needed
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(50.0),
      //                   border: Border.all(color: Colors.blue),
      //                   color: Colors.white,
      //                 ),
      //                 child: const TextField(
      //                   decoration: InputDecoration(
      //                     border: InputBorder.none,
      //                     hintText: 'Child Name',
      //                     hintStyle: TextStyle(
      //                       color: Color.fromRGBO(150, 150, 150, 1),
      //                       fontSize: 16,
      //                     ),
      //                     contentPadding: EdgeInsets.all(12.0),
      //                   ),
      //                   keyboardType: TextInputType.name,
      //                   style: TextStyle(
      //                     color: Colors.black,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(height: 35.0),
      //           ElevatedButton(
      //             onPressed: () {
      //               // function
      //             },
      //             style: ElevatedButton.styleFrom(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(50.0),
      //               ),
      //               padding: const EdgeInsets.symmetric(
      //                   vertical: 5.0, horizontal: 40.0),
      //               primary: const Color.fromRGBO(0, 176, 240, 1),
      //             ),
      //             child: const Text(
      //               'SUBMIT',
      //               style: TextStyle(
      //                 fontSize: 16,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      Scaffold(
        resizeToAvoidBottomInset: false,
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
      Scaffold(
        resizeToAvoidBottomInset: false,
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
          'assets/images/Mag_active.png',
          width: 32,
          height: 32,
        ),
        inactiveIcon: Image.asset(
          'assets/images/Mag_inactive.png',
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
