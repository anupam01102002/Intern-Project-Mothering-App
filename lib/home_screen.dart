import 'package:flutter/material.dart';
import './child_details.dart';

class HomeScreen extends StatelessWidget {
  final Color primaryColor = const Color(0xFF7CDAFC);
  final Color iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF7CDAFC),
          secondary: const Color(0xFFFFC107),
        ),
      ),
      home: Scaffold(
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChildDetails()),
                );
              },
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
        body: const Center(
          child: Text(
            'Welcome to my Flutter app!',
            style: TextStyle(fontSize: 24),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.lightBlue,
            selectedItemColor: Colors.lightBlue,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/Play_area.png',
                  width: 32,
                  height: 32,
                ),
                label: 'Book',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/MSocial_logo.png',
                  width: 32,
                  height: 32,
                ),
                label: 'Social',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Magazine',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
